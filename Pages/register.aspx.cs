using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Pages
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegesterClient(object sender, EventArgs e)
        {
            string sql = $"INSERT INTO Clients(Name, UserName, Email, Password) VALUES('{Name.Text}', '{UserName.Text}', '{Email.Text}', '{Password.Text}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
                Response.Redirect("login.aspx");
            else
                ShowAlert("Error : Client Not Registered");
        }

        private void ShowAlert(string message)
        {
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}