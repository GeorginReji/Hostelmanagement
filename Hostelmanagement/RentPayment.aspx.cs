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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            btnGo();
        }
        void btnGo()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


               
                    con.Open();


                SqlCommand cmd = new SqlCommand("SELECT adduser.user_name, adduser.full_name,adduser.room_typ,adduser.room_num,roomdetails.rent from adduser inner join roomdetails on adduser.room_typ = roomdetails.roomtyp where adduser.user_name='" + TextBox3.Text + "' ;", con);

                // SqlCommand cmd = new SqlCommand("select A.*,B.* from adduser A inner join roomdetails B on B.roomtyp = A.room_typ where A.user_name='" + TextBox3.Text + "' ;", con);

               // SqlCommand cmd = new SqlCommand("select * from adduser,room_typ where user_name='" + TextBox3.Text + "' ;", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read()) 
                {
                    
                    TextBox4.Text = dr["full_name"].ToString();
                    TextBox1.Text = dr["room_typ"].ToString();
                    TextBox2.Text = dr["room_num"].ToString();
                    TextBox6.Text = dr["rent"].ToString();

                    
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


        bool AlreadyPaid()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {



                con.Open();


                SqlCommand cmd = new SqlCommand("SELECT *FROM tbl_rent where u_name='" + TextBox3.Text + "' AND MONTH(rp_date)= Month( '" + TextBox6.Text + "') ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }


        void addpayment()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            // Response.Write("<script>alert('testing');</script>");
            try
            {





                SqlCommand cmd = new SqlCommand("INSERT INTO payments(u_name,f_name,r_typ,r_num,rp_date,rent) values(@username,@fullname,@roomtyp,@roomnum,,@rntdate,@rent) ", con);
                cmd.Parameters.AddWithValue("@username", TextBox3.Text);
                cmd.Parameters.AddWithValue("@fullname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@roomtyp", TextBox1.Text);
                cmd.Parameters.AddWithValue("@roomnum", TextBox2.Text);
                cmd.Parameters.AddWithValue("@rntdate", TextBox5.Text);
                cmd.Parameters.AddWithValue("@rent", TextBox6.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Payment added');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (AlreadyPaid())
            {
                Response.Write("<script>alert('Already paid ');</script>");
            }
            else
            {
                // Response.Redirect(String.Format("Razorpaycheckout.aspx?Uname={0}&Fname={1}&Date={2}&Cnum={3}&Email={4}&Roomtyp={5}&Total={8}",TextBox1.Text,TextBox4.Text,TextBox5.Text,txtcnumber,txtemail,ddlroomtyp,txttotal));

                Session["Uname"] = TextBox3.Text;
                Session["Fname"] = TextBox4.Text;
                Session["Roomtyp"] = TextBox1.Text;

                Session["rnum"] = TextBox2.Text;
                Session["rdate"] = TextBox5.Text;
                Session["rent"] = TextBox6.Text;
                addpayment();
                Response.Redirect("RazorpayRent.aspx");



                }
            }
    }
}