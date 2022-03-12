using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quest.Models;

namespace Quest.Pages
{
    public partial class AdminAddCarOffer : System.Web.UI.Page
    {
        QuestEntities ent = new QuestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            caroffer car = new caroffer();
            car.CarMark = TxtMark.Text;
            car.CarModel = TxtModel.Text;
            car.companyName = TxtName.Text;
            car.contactCompany = TxtContact.Text;
            car.priceperday = Double.Parse(TxtPrice.Text);
            ent.caroffers.Add(car);
            ent.SaveChanges();
            GridView1.DataBind();
        }
    }
}