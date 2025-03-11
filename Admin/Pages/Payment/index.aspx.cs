using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Payment
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select(@"
    SELECT p.*, o.TotalPrice, o.Name AS OrderName, o.Email, o.Status, 
           c.ProductId, c.ClientId, cl.Name AS ClientName 
    FROM Payment p
    INNER JOIN [Order] o ON p.OrderId = o.Id
    INNER JOIN Cart c ON o.CartId = c.Id
    INNER JOIN Clients cl ON c.ClientId = cl.Id");

            RepeaterPayment.DataSource = dt;
            RepeaterPayment.DataBind();

        }
    }
}