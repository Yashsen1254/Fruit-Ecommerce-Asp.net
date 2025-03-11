using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginClient(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select($"SELECT Id, Email, Password FROM Clients WHERE Email = '{Email.Text}' AND Password = '{Password.Text}'");
            if (dt.Rows.Count != 0)
            {
                int Clientid = Convert.ToInt32(dt.Rows[0]["Id"]);
                Session["ClientId"] = Clientid;
                Response.Redirect("index.aspx");
            }
        }
    }
}