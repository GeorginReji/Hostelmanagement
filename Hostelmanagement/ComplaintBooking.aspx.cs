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
    public partial class ComplaintBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void bookcomplaint()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_complaint(userid,UserName,Room_Numb,complaint) values(@usid,@UName,@roomnumb,@complaint) ", con);
                cmd.Parameters.AddWithValue("@usid", TextBox3.Text);
                cmd.Parameters.AddWithValue("@UName", TextBox4.Text);
                cmd.Parameters.AddWithValue("@roomnumb", TextBox2.Text);
                cmd.Parameters.AddWithValue("@complaint", TextBox12.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registeration Successful');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void btnGo()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {



                con.Open();


                SqlCommand cmd = new SqlCommand("SELECT full_name,room_num,room_typ from adduser  where adduser.user_name='" + TextBox3.Text + "' ;", con);

                // SqlCommand cmd = new SqlCommand("select A.*,B.* from adduser A inner join roomdetails B on B.roomtyp = A.room_typ where A.user_name='" + TextBox3.Text + "' ;", con);

                // SqlCommand cmd = new SqlCommand("select * from adduser,room_typ where user_name='" + TextBox3.Text + "' ;", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    TextBox4.Text = dr["full_name"].ToString();
                    TextBox1.Text = dr["room_typ"].ToString();
                    TextBox2.Text = dr["room_num"].ToString();

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
        protected void Button5_Click(object sender, EventArgs e)
        {
            btnGo();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             bookcomplaint();
        }
    }
}