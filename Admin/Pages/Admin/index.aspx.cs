using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Admins]");
            RepeaterAdmin.DataSource = dt;
            RepeaterAdmin.DataBind();
        }

        protected void DeleteAdmin(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int Id);
            string sql = $"DELETE FROM [Admins] WHERE Id = {Id}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                ShowAlert("Error : Admin Not Deleted");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}