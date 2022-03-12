using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class AdminShowCarReservation : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Slct"))
            {
                int offerID = Convert.ToInt32(GridView1.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
                userCarReservation usrr = ent.userCarReservations.Where(xx => xx.userCarReservationID == offerID).FirstOrDefault();
                usrr.isConfirmed = 1;
                ent.Entry(usrr).State = System.Data.Entity.EntityState.Modified;
                ent.SaveChanges();
            }
        }
    }
}