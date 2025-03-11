using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Client
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM [Clients]");
            RepeaterClient.DataSource = dt;
            RepeaterClient.DataBind();
        }
    }
}