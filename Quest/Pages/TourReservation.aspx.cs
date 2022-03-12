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
    public partial class TourReservation : System.Web.UI.Page
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
            userTourReservation cars = new userTourReservation();
            int offerID = int.Parse(ViewState["AdrsID"].ToString());
            int UserID = int.Parse(Session["UserID"].ToString());
            cars.dateFrom = DateTime.ParseExact(TxtDayFrom.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            cars.dateTo = DateTime.ParseExact(TxtDayTo.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            cars.isConfirmend = 0;
            cars.userID = UserID;
            cars.TourID = offerID;

            ent.userTourReservations.Add(cars);
            ent.SaveChanges();
            Panel2.Visible = false;
            GridView2.DataBind();
        }
    }
}