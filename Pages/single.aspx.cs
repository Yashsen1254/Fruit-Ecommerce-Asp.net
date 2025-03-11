using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Pages
{
    public partial class single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                int Id = int.Parse(Request.QueryString["Id"]);
                string sql = $"SELECT * FROM Product WHERE Id = {Id}";
                DataTable dt = utils.service.select(sql);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void Book_Order(object sender, EventArgs e)
        {
            int Id = int.Parse(Request.QueryString["Id"]);
            int ClientId = Convert.ToInt32(Session["ClientId"]);
            string sql = $"INSERT INTO Cart(Clientid, Productid, Quantity, IsDeleted) VALUES('{ClientId}', '{Id}',  '{Quantity.Text}', '{1}')";
            int rows = utils.service.execute(sql);
            if (rows > 0)
                Response.Redirect("cart.aspx");
        }
    }
}