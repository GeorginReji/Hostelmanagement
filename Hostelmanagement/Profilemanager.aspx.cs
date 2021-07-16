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
    public partial class Profilemanager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void btnGo()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
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


                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();

                //    da.Fill(dt);
                //    if (dt.Rows.Count >= 1)
                //    {
                //        TextBox3.Text = dt.Rows[0][1].ToString();
                //        TextBox4.Text = dt.Rows[0][2].ToString();
                //        TextBox1.Text = dt.Rows[0][4].ToString();
                //        TextBox2.Text = dt.Rows[0][3].ToString();
                //       // TextBox6.Text = dt.Rows[0][rent].ToString();


                //    }
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            btnGo();
        }




        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM Register where username='" + TextBox1.Text + "';", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User Deleted ');</script>");


        }
    }
}