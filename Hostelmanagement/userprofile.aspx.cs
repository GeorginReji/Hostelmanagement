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

        }

        void profiledetails()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            
            try
            {

                con.Open();


                SqlCommand cmd = new SqlCommand("SELECT Register.username, Register.fullname,Register.contactnum,Register.email,Register.roomtyp,Register.permanentaddress,adduser.room_num from Register inner join adduser on Register.username = adduser.user_name where Register.username='" + TextBox1.Text + "' ;", con);

                // SqlCommand cmd = new SqlCommand("select A.*,B.* from adduser A inner join roomdetails B on B.roomtyp = A.room_typ where A.user_name='" + TextBox3.Text + "' ;", con);

                // SqlCommand cmd = new SqlCommand("select * from adduser,room_typ where user_name='" + TextBox3.Text + "' ;", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    TextBox1.Text = dr["username"].ToString();
                    TextBox7.Text = dr["fullname"].ToString();
                    TextBox5.Text = dr["contactnum"].ToString();
                    TextBox6.Text = dr["email"].ToString();
                    TextBox3.Text = dr["roomtyp"].ToString();
                    TextBox12.Text = dr["permanentaddress"].ToString();
                    TextBox4.Text = dr["room_num"].ToString();


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
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}