using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
                con.Open();
              
                SqlCommand cmd = new SqlCommand("SELECT *FROM Register where username='" + TextBox1.Text.Trim() + "' AND password ='"+ TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Login Success');</script>");
                        Session["Username"] = dr.GetValue(10).ToString();
                        Session["fullname"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(12).ToString();
                        Session["Gmail"] = dr.GetValue(5).ToString();
                        Session["contactnum"] = dr.GetValue(4).ToString();




                    }
                    Response.Redirect("UserHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
    }
}