using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Category
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Category]");
            RepeaterCategory.DataSource = dt;
            RepeaterCategory.DataBind();
        }

        protected void DeleteCategory(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int Id);
            string sql = $"DELETE FROM [Category] WHERE Id = {Id}";
            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                ShowAlert("Error : Category Not Deleted");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}