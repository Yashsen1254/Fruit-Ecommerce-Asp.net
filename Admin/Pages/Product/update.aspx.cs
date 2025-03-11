using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Fruit.Admin.Pages.Product
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Id, Name FROM Category");
            CategoryList.DataSource = dt;
            CategoryList.DataValueField = "Id";
            CategoryList.DataTextField = "Name";
            CategoryList.DataBind();
        }

        protected void UpdateProduct(object sender, EventArgs e)
        {
            int Id = int.Parse(Request.QueryString["Id"]);
            string name = Name.Text;
            string description = Description.Text;
            string price = Price.Text;
            string category = CategoryList.Text;

            string sql = $"UPDATE [Product] SET Name = '{name}', Description = '{description}', Price = '{price}', CategoryId = '{category}'";

            if (ImageFile.HasFile)
            {
                string fileName = ImageFile.FileName;
                string filePath = Server.MapPath("~/uploads/") + fileName;
                ImageFile.SaveAs(filePath);

                sql += $", ImageFileName = '{fileName}'";
            }

            sql += $" WHERE Id = {Id}";

            int rows = utils.service.execute(sql);

            if (rows > 0)
                Response.Redirect("index.aspx");
            else
                Response.Redirect($"update.aspx?Id={Id}");
        }
    }
}