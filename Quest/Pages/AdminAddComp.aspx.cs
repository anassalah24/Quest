using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    
    public partial class AdminAddComp : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TourCompany com = new TourCompany();
            com.CompName = TxtName.Text;
            com.ContactInfo = TxtContact.Text;
            ent.TourCompanies.Add(com);
            ent.SaveChanges();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Slct"))
            {
                int offerID = Convert.ToInt32(GridView1.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
                Session["CompID"] = offerID;
                Panel1.Visible = true;
                GridView2.DataBind();
            }
        }

        protected void BtnOffer_Click(object sender, EventArgs e)
        {
            tourOffer trof = new tourOffer();
            trof.CompanyID = int.Parse(Session["CompID"].ToString());
            trof.GovernID = int.Parse(DropDownList1.SelectedValue);
            trof.offerDescr = TxtDesc.Text;
            trof.PlaceDescr = TxtPlace.Text;
            ent.tourOffers.Add(trof);
            ent.SaveChanges();
            GridView2.DataBind();
        }
    }
}