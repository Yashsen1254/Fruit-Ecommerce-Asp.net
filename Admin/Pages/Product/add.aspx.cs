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
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = utils.service.select("SELECT Id, Name FROM Category");
            CategoryList.DataSource = dt;
            CategoryList.DataValueField = "Id";
            CategoryList.DataTextField = "Name";
            CategoryList.DataBind();
        }

        protected void AddProduct(object sender, EventArgs e)
        {
            if (ImageFile.HasFile)
            {
                string FileName = Path.GetFileName(ImageFile.FileName);
                string FilePath = Server.MapPath("~/uploads/" + FileName);
                HttpPostedFile postedFile = ImageFile.PostedFile;
                ImageFile.SaveAs(FilePath);

                string sql = $"INSERT INTO Product(Name, Description, Price, CategoryId, ImageFileName, IsDeeleted) VALUES ('{Name.Text}','{Description.Text}', '{Price.Text}', '{CategoryList.SelectedValue}', '{FileName}', {1})";
                int rows = utils.service.execute(sql);

                if (rows > 0)
                    Response.Redirect("index.aspx");
                else
                    Response.Redirect("add.aspx");
            }
        }
    }
}