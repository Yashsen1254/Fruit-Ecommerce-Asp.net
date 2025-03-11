using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Fruit.Admin.Pages.Order
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select(@"
    SELECT o.Id, o.TotalPrice, o.Name AS OrderName, o.Email, o.Status, 
           c.ProductId, p.Name AS ProductName 
    FROM [Order] o
    INNER JOIN Cart c ON o.CartId = c.Id
    INNER JOIN Product p ON c.ProductId = p.Id");

            RepeaterOrder.DataSource = dt;
            RepeaterOrder.DataBind();

        }

        protected void Received(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string commandArgument = btn.CommandArgument;
            int.TryParse(commandArgument, out int Id);
            string sql = $"UPDATE [Order] SET Status = 'Received'";
            string sql1 = $"INSERT INTO [Payment](OrderId, Status) VALUES('{Id}', 'Received')";
            int rows = utils.service.execute(sql);
            int row = utils.service.execute(sql1);

            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                Response.Redirect("index.aspx");
        }
    }
}