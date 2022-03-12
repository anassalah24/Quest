using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class Signup : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SystemUser usr = new SystemUser();
            int userTypeID = int.Parse(Session["UserType"] .ToString());
            usr.UserEmail = TxtEmail.Text;
            usr.UserName = TxtUserName.Text;
            usr.Password = TxtPswrd.Text;
            usr.UserTypeID = userTypeID;
            ent.SystemUsers.Add(usr);
            ent.SaveChanges();
            if (usr.UserTypeID == 1)
            {
                Session["UserType"] = 1;
                Response.Redirect("~/Pages/entertanmentGovPlaces.aspx");
            }
            else
            {
                Session["UserType"] = 2;
                Response.Redirect("~/Pages/AdminAddEntertainment.aspx");
            }
        }
    }
}