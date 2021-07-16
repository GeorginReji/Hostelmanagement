using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Hostelmanagement
{
    public partial class WebForm2 : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("SELECT *FROM Admin_details where Admin_id='" + TextBox1.Text.Trim() + "' AND Password ='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Redirect("AdminHome.aspx");
                        //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                    }
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