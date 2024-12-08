using System;
using System.Linq;
using TinyTotsWebApp.Models;

namespace TinyTotsWebApp
{
    public partial class RegistrationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            using (var db = new TinyTotsDbContext())
            {
                gvRegistrations.DataSource = db.TinyTotsTable.ToList();
                gvRegistrations.DataBind();
            }
        }
    }
}
