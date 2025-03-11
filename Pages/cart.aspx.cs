using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Pages
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ClientId = Convert.ToInt32(Session["ClientId"]);
            string sql = $"SELECT cart.*, product.Name, product.Price, product.Description, product.ImageFileName FROM cart INNER JOIN product ON cart.ProductId = product.Id WHERE cart.ClientId = {ClientId} AND cart.Isdeleted = 1";
            DataTable dt = utils.service.select(sql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void ProceedToCheckout(object sender, EventArgs e)
        {
            int ClientId = Convert.ToInt32(Session["ClientId"]);
            string sql = $"SELECT Id FROM cart WHERE ClientId = {ClientId} AND Isdeleted = 1";
            DataTable dt = utils.service.select(sql);

            if (dt.Rows.Count > 0)
            {
                int cartId = Convert.ToInt32(dt.Rows[0]["Id"]);
                Response.Redirect($"checkout.aspx?Id={cartId}");
            }
        }
    }
}