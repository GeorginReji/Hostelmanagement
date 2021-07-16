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
    public partial class Adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //check user exixts 
        bool checkuserexits()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT *FROM adduser where user_name='" + TextBox2.Text + "' ;", con);
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkuserexits())
            {
                Response.Write("<script>alert('User Already Added ');</script>");
            }
            else
            {
                adduser();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete FROM adduser where user_name='" + TextBox3.Text + "' and room_num='" + TextBox1.Text + "';", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('User Deleted ');</script>");
            GridView1.DataBind();
            con.Close();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedItem.Text = "";

          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update adduser set room_num='" + TextBox1.Text + "', room_typ = '" + TextBox2.Text + "', bed_num= '" + DropDownList1.SelectedItem.Text + "' where user_name='" + TextBox3.Text + "';", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('User Updated ');</script>");
            GridView1.DataBind();
            con.Close();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedItem.Text = "";
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


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT *FROM Register where username='" + TextBox3.Text + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {       
                    TextBox4.Text = dt.Rows[0][1].ToString();
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
       
        void adduser()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO adduser(user_name,full_name,room_num,room_typ,bed_num) values(@username,@fullname,@roomnum,@roomtyp,@bednum) ", con);
                cmd.Parameters.AddWithValue("@username", TextBox3.Text);
                cmd.Parameters.AddWithValue("@fullname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@roomnum", TextBox1.Text);
                cmd.Parameters.AddWithValue("@roomtyp", TextBox2.Text);
                cmd.Parameters.AddWithValue("@bednum", DropDownList1.SelectedItem.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Room added');</script>");
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void btnGo2()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT *FROM addroom where room_num='" + TextBox1.Text + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "bed_num" ;
                    DropDownList1.DataBind();
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
            btnGo2();
        }
    }
}