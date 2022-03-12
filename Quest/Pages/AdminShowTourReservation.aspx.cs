using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class AdminShowTourReservation : System.Web.UI.Page
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
            int usrID = int.Parse(Session["UserID"].ToString());

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Slct"))
            {
                int offerID = Convert.ToInt32(GridView1.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
                userTourReservation usrr = ent.userTourReservations.Where(xx => xx.userTourReservationID == offerID).FirstOrDefault();
                usrr.isConfirmend = 1;
                ent.Entry(usrr).State = System.Data.Entity.EntityState.Modified;
                ent.SaveChanges();
            }
        }
    }
}