using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Pages
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TotalPrice.Text = GetTotalPrice().ToString("F2");
            }
            int ClientId = Convert.ToInt32(Session["ClientId"]);
            string sql = $"SELECT cart.*, product.Name, product.Price, product.Description, product.ImageFileName FROM cart INNER JOIN product ON cart.ProductId = product.Id WHERE cart.ClientId = {ClientId} AND cart.Isdeleted = 1";
            DataTable dt = utils.service.select(sql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void Pay_Now(object sender, EventArgs e)
        {
            int CartId = int.Parse(Request.QueryString["Id"]);
            int ClientId = Convert.ToInt32(Session["ClientId"]);
            string checkout = $"INSERT INTO [Checkout] (Name, Country, Address, City, State, Zip, Phone, Email, Clientid) VALUES('{Name.Text}', '{Country.Text}', '{Address.Text}', '{City.Text}', '{State.Text}', '{Zip.Text}', '{Phone.Text}', '{Email.Text}','{ClientId}')";
            int rows2 = utils.service.execute(checkout);
            string sql = $"INSERT INTO [Order] (TotalPrice, Name, Email, Status, Cartid) VALUES('{TotalPrice.Text}', '{Name.Text}', '{Email.Text}','Pending', '{CartId}')";
            int rows = utils.service.execute(sql);
            string query = $"UPDATE [Cart] SET Isdeleted = 0 WHERE ClientId = {ClientId}";
            int row = utils.service.execute(query);
            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                Response.Redirect("checkout.aspx?Id=");
        }

        protected double GetTotalPrice()
        {
            int ClientId = Convert.ToInt32(Session["ClientId"]);

            string sql = @"
        SELECT SUM(CAST(product.Price AS DECIMAL(18,2)) * CAST(cart.Quantity AS INT)) AS Total 
        FROM cart 
        INNER JOIN product ON cart.ProductId = product.Id 
        WHERE cart.ClientId = " + ClientId + " AND cart.Isdeleted = 1";

            DataTable dt = utils.service.select(sql);

            if (dt.Rows.Count > 0 && dt.Rows[0]["Total"] != DBNull.Value)
            {
                return Convert.ToDouble(dt.Rows[0]["Total"]);
            }
            return 0;
        }
    }
}