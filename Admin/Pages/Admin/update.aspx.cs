using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Admin
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                int Id = int.Parse(Request.QueryString["Id"]);
                string sql = $"SELECT * FROM [Admins] WHERE Id = {Id}";
                DataTable dt = utils.service.select(sql);
            }
        }

        protected void UpdateAdmin(object sender, EventArgs e)
        {
            int Id = int.Parse(Request.QueryString["Id"]);
            string sql = $"UPDATE [Admins] SET Name = '{UpdateName.Text}', UserName = '{UpdateUserName.Text}', Email = '{UpdateEmail.Text}', Password = '{UpdatePassword.Text}' WHERE Id = {Id}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                Response.Redirect("update.aspx?Id=" + Id);
        }
    }
}