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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source= DESKTOP-V3C8UBL\SQLEXPRESS;" + "Initial Catalog=master;Integrated Security=True";
           
            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into [mst_user](loginid,pass,username,address,phone,email)values(@loginid,@pass,@username,@address,@phone,@email)";
                cmd.Parameters.AddWithValue("@loginid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox4.Text);
                cmd.Parameters.AddWithValue("@username", TextBox3.Text);
                cmd.Parameters.AddWithValue("@address", TextBox8.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox7.Text);
                cmd.Parameters.AddWithValue("@email", TextBox6.Text);


                cmd.Connection = conn;
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Label1.Visible = true;
                    Label1.Text = "registration sucessful !!! ";

                }
                else

                {
                    Label2.Visible = true;
                    Label2.Text = "Error in registration !!";
                }
                
            }



            catch (Exception ex)
            {
                Label2.Text = "error " + ex.Message;
            }
            finally
            {
                conn.Close();
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }


}







 