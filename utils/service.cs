using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Fruit.utils
{
    public class service : WebControl
    {
        static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YASH_SEN\source\repos\Fruit\Fruit\App_Data\Fruit.mdf;Integrated Security=True");

        internal static int execute(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int rows = cmd.ExecuteNonQuery();
            con.Close();
            return rows;
        }

        internal static DataTable select(string sql)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();
            return dt;
        }
    }
}
