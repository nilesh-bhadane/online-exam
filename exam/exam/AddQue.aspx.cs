using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Data.Sql;
using System.Data.SqlClient;


namespace exam
{
    public partial class AddQue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            

            SqlConnection conn = new SqlConnection();
            





            conn.ConnectionString = @"Data Source=DESKTOP-V3C8UBL\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";

            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into mst_question (queid,quedesc,ans1,ans2,ans3,ans4,trueans)values(@queid,@quedesc,@ans1,@ans2,@ans3,@ans4,@trueans)" );
            cmd.Connection = conn;

            cmd.Parameters.AddWithValue("@queid",TextBox1.Text);
            
            cmd.Parameters.AddWithValue("@quedesc",TextBox2.Text);

            cmd.Parameters.AddWithValue("@ans1",TextBox3.Text);
            cmd.Parameters.AddWithValue("@ans2",TextBox4.Text);
            cmd.Parameters.AddWithValue("@ans3",TextBox5.Text);
            cmd.Parameters.AddWithValue("@ans4",TextBox6.Text);

             cmd.Parameters.AddWithValue("@trueans",TextBox7.Text);


          
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
                Label1.Text = "Question added Successfully !!!";

            




        }
    }
}