using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Product
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM Product WHERE IsDeeleted = 1");
            RepeaterDestinaion.DataSource = dt;
            RepeaterDestinaion.DataBind();
        }

        protected void DeleteProduct(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int Id);
            string sql = $"UPDATE [Product] SET IsDeeleted = 0 WHERE Id = {Id} ";
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