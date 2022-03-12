using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class AdminAddEntertainment : System.Web.UI.Page
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

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            entertainmentPlace entr = new entertainmentPlace();
            entr.entAddress = TxtAddress.Text;
            entr.entDescr = TxtDescr.Text;
            entr.entName = TxtName.Text;
            entr.entTypeID = int.Parse(DDLType.SelectedValue);
            entr.GovermentID = int.Parse(DDLGov.SelectedValue);

            ent.entertainmentPlaces.Add(entr);
            ent.SaveChanges();
            GridView1.DataBind();
        }
    }
}