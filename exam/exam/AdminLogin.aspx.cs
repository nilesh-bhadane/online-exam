using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace exam
{
    public partial class AdminLogin : System.Web.UI.Page
    {




        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();

            SqlCommand cmd = new SqlCommand();




            conn.ConnectionString = @"Data Source=DESKTOP-V3C8UBL\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";

            conn.Open();


            cmd.Connection = conn;
            cmd.CommandText = "select count(*) from mst_admin where loginid='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            int a = (int)cmd.ExecuteScalar();


            if (a > 0)
            {

                Response.Redirect("~/AdminTask.aspx");
            }

            else
            {
                alert.InnerHtml = "<script>alert('invalid username or password');</script>";

            }
        }
    }
}