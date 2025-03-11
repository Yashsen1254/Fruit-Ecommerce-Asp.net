using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Login
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select($"SELECT Id, Email, Password FROM Admins WHERE Email = '{Email.Text}' AND Password = '{Password.Text}'");
            if (dt.Rows.Count != 0)
            {
                int Adminid = Convert.ToInt32(dt.Rows[0]["Id"]);
                Session["AdminId"] = Adminid;
                Response.Redirect("../index.aspx");
            }
        }
    }
}