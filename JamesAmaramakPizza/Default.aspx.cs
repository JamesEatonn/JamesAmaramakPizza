using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JamesAmaramakPizza
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PizzaDatabaseEntities db = new PizzaDatabaseEntities();
            var dbTables = db.Tables;

            var newCustomer = new Table();

            newCustomer.Name = Nametxt.Text.ToString();
            newCustomer.Email = Emailtxt.Text.ToString();
            newCustomer.Phone = Phonetxt.Text.ToString();
            newCustomer.Pizza_Type = PizzaTypeBox.SelectedValue.ToString();


            db.Tables.Add(newCustomer);
            db.SaveChanges();


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}