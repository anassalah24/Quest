using Quest.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quest.Pages
{
    public partial class CarReservation : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Pages/Login.aspx");
                return;
            }
            if (string.IsNullOrEmpty(Session["UserID"].ToString()))
            {
                Response.Redirect("~/Pages/Login.aspx");
                return;
            }
            if (!IsPostBack)
            {
                List<caroffer> car = ent.caroffers.ToList<caroffer>();
                GridView1.DataSource = car;
                GridView1.DataBind();
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Double carp = 10000000;
            if (!String.IsNullOrEmpty(TxtPrice.Text))
            {
                if(Double.Parse(TxtPrice.Text) > 0)
                    carp = Double.Parse(TxtPrice.Text);
            }
            List<caroffer> car = ent.caroffers.Where(xx => xx.CarMark == DDLMark.SelectedValue && xx.companyName == DDLComp.SelectedValue && xx.priceperday <= carp).ToList<caroffer>();
            GridView1.DataSource = car;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Slct"))
            {
                int offerID = Convert.ToInt32(GridView1.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
                ViewState["AdrsID"] = offerID;
                Panel2.Visible = true;
            }
        }

        protected void BtnReserve_Click(object sender, EventArgs e)
        {
            userCarReservation cars = new userCarReservation();
            int offerID = int.Parse(ViewState["AdrsID"] .ToString());
            int UserID = int.Parse(Session["UserID"].ToString());
            cars.datefrom = DateTime.ParseExact(TxtDayFrom.Text,"dd/MM/yyyy",CultureInfo.InvariantCulture);
            cars.dateto = DateTime.ParseExact(TxtDayTo.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            cars.isConfirmed = 0;
            cars.userID = UserID;
            cars.carofferID = offerID;

            ent.userCarReservations.Add(cars);
            ent.SaveChanges();
            Panel2.Visible = false;
            GridView2.DataBind();
        }
    }
}