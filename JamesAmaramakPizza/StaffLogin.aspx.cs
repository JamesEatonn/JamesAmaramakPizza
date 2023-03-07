using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JamesAmaramakPizza
{
    public partial class StaffLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername12.Text;
            string password = txtPassword.Text;

            // Create a new instance of the DbContext class that represents the database context.
            using (var context = new PizzaDatabaseEntities())
            {
                // Query the User table for a record with the specified username and password.
                var stafflogin = context.stafflogins.Where(u => u.username == username && u.password == password).FirstOrDefault();

                if (stafflogin != null)
                {
                    // The username and password match a record in the database.
                    // Redirect the user to the home page or do something else.
                    Response.Redirect("staff.aspx");
                }
                else
                {
                    // The username and password do not match a record in the database.
                    // Display an error message to the user.
                    lblError.Text = "Invalid username or password. Please try again.";
                }
            }
        }
    }
}

