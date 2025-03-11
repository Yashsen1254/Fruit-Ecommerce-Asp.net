using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace Fruit.Admin.Pages.Feedback
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT * FROM Feedback");
            RepeaterFeedback.DataSource = dt;
            RepeaterFeedback.DataBind();
        }
    }
}