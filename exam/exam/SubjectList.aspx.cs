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
    public partial class SubjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source= DESKTOP-V3C8UBL\SQLEXPRESS;" + "Initial Catalog=master;Integrated Security=True";






            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandText = "Select sub_name from mst_subject";
                SqlDataReader myReader;
                myReader = cmd.ExecuteReader();
                myReader.Read();

                Label1.Text= myReader["sub_name"].ToString();




            }

            catch (Exception err)
            {

                lblerror.Text = "Error in inserting record";
                lblerror.Text += err.Message;



            }
            finally
            {
                conn.Close();
            }


        }
    }
}