using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT COUNT(*) as Total FROM Category");
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            DataTable dt2 = utils.service.select("SELECT COUNT(*) as Total FROM Product");
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();
            DataTable dt3 = utils.service.select("SELECT COUNT(*) as Total FROM Clients");
            Repeater3.DataSource = dt3;
            Repeater3.DataBind();
            DataTable dt4 = utils.service.select("SELECT COUNT(*) as Total FROM [Order]");
            Repeater4.DataSource = dt4;
            Repeater4.DataBind();
            DataTable dt5 = utils.service.select("SELECT COUNT(*) as Total FROM Payment");
            Repeater5.DataSource = dt5;
            Repeater5.DataBind();
            DataTable dt6 = utils.service.select("SELECT COUNT(*) as Total FROM Feedback");
            Repeater6.DataSource = dt6;
            Repeater6.DataBind();
        }
    }
}