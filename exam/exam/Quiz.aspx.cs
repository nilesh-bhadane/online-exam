using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data.Sql;

namespace exam
{
    public partial class Quiz : System.Web.UI.Page
    {


        
        protected void Page_Load(object sender, EventArgs e)
        {
               if (!Page.IsPostBack)
            {

                Session["total"] = 0;

                Next_Click(null, null);
                Session["trueans"] = 0;
                
            }
            if (Session["queid"] != null)
            {
                if ((Int32)Session["queid"] == 10)
                {
                    Response.Redirect("Result.aspx");

                }
            }
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd;
            
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=DESKTOP-V3C8UBL\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
            conn.Open();
            if (Session["queid"] == null)
            {
                Session["queid"] = 1;
            }
            else
            {

                 SqlCommand cmd1 = new SqlCommand("Select trueans from mst_question where queid=@queid");
                cmd1.Connection = conn;
                cmd1.Parameters.AddWithValue("@queid", Session["queid"]);

                SqlDataReader rd1 = cmd1.ExecuteReader();

                while (rd1.Read())
                {
                    if ((Int32)rd1["trueans"] == RadioButtonList1.SelectedIndex+1)
                    {
                        Session["trueans"]=((Int32)Session["trueans"]) + 1;

                    }
                }
                rd1.Close();
                Session["queid"] = ((Int32)Session["queid"]) + 1;

            }
            cmd = new SqlCommand("select queid,quedesc,ans1,ans2,ans3,ans4 from mst_question where queid=@queid");
            cmd.Connection = conn;

            cmd.Parameters.AddWithValue("@queid", Session["queid"]);

            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                queid.Text = "Que "+rd["queid"].ToString();
                Que.Text = rd["quedesc"].ToString();
                RadioButtonList1.Items.Clear();
                for (int i = 1; i < 5; i++)
                {
                    ListItem l = new ListItem(rd["ans" + i].ToString());
                    RadioButtonList1.Items.Add(l);
                }

            }
            Session["total"] = ((Int32)Session["total"]) + 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}