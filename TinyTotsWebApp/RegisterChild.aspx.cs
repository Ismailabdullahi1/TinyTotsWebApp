using System;
using System.Linq;
using System.Web.UI.WebControls;
using TinyTotsWebApp.Models;

namespace TinyTotsWebApp
{
    public partial class RegisterChild : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (var db = new TinyTotsDbContext())
            {
                var registration = new TinyTots
                {
                    FirstName = txtFirstName.Text,
                    SecondName = txtSecondName.Text,
                    Race = ddlRace.SelectedValue,
                    Gender = rblGender.SelectedValue,
                    FoodAllergies = string.Join(", ", cblAllergies.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Text))
                };

                db.TinyTotsTable.Add(registration);
                db.SaveChanges();

                Response.Redirect("RegistrationList.aspx");
            }
        }
    }
}
