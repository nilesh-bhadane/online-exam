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
    public partial class login : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        bool flag = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@loginid", textbox1.Text);
            SqlDataReader rd = cmd.ExecuteReader();
           
            
         
            
            conn.ConnectionString = @"Data Source=DESKTOP-V3C8UBL\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
            conn.Open();
            cmd = new SqlCommand("select loginid,pass from mst_user where loginid=@loginid");
             try
            {
                
                while (rd.Read())
                {
                    if (rd["pass"].ToString() == textbox2.Text)
                    {
                        Session["mst_user"] = rd["loginid"];
                        flag = true;
                        Response.Redirect("~/Quiz.aspx");
                        break;

                    }

                    else
                    {
                        lblshow.Text = "Valid username and password require";
                    }


                }
            }

            catch (Exception err)
            {

                lblerror.Text = "Error in login";
                lblerror.Text += err.Message;



            }
            finally
            {
                conn.Close();
            }


        }

        protected void textbox2_TextChanged(object sender, EventArgs e)
        {

        }
    }


}


       
   



       
    
