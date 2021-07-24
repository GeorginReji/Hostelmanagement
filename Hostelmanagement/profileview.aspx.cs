using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Username"].ToString() == "" || Session["Username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                   

                    if (!Page.IsPostBack)
                    {
                        profiledetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        void profiledetails()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {



                con.Open();


                SqlCommand cmd = new SqlCommand("SELECT Register.fullname,Register.age,Register.contactnum,Register.email,Register.roomtyp,Register.permanentaddress,adduser.room_num from Register inner join adduser on Register.roomtyp = adduser.room_typ where Register.username='" + Session["Username"].ToString() + "' ;", con);

               

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    TextBox1.Text = dr["fullname"].ToString();
                    TextBox2.Text = dr["age"].ToString();
                    TextBox5.Text = dr["contactnum"].ToString();
                    TextBox6.Text = dr["email"].ToString();
                    TextBox3.Text = dr["roomtyp"].ToString();
                    TextBox4.Text = dr["room_num"].ToString();
                    TextBox12.Text = dr["permanentaddress"].ToString();

                }


                else
                {
                    Response.Write("<script>alert('No user found in this id');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}