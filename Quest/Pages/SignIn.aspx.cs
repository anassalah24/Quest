using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class SignIn : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["UserID"] = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SystemUser usr = ent.SystemUsers.Where(xx => xx.UserName == TxtUserName.Text).FirstOrDefault();

            if (usr.Password.Equals(TxtPswrd.Text))
            {
                Session["UserID"] = usr.UserID;
                if (usr.UserTypeID == 1)
                {
                    Session["UserType"] = 1;
                    Response.Redirect("~/Pages/entertanmentGovPlaces.aspx");
                }
                else {
                    Session["UserType"] = 2;
                    Response.Redirect("~/Pages/AdminAddEntertainment.aspx"); 
                }
            }
        }

        protected void BtnAdmin_Click(object sender, EventArgs e)
        {
            Session["UserType"] = 2;
            Response.Redirect("~/Pages/Signup.aspx");
        }

        protected void BtnUser_Click(object sender, EventArgs e)
        {
            Session["UserType"] = 1;
            Response.Redirect("~/Pages/Signup.aspx");
        }
    }
}