using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class Booking : System.Web.UI.Page
    {





        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillddlroomtyp();
            }
           
        }

        public void fillddlroomtyp()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
                
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = " Select * from roomdetails ";

            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;

            DataSet ds = new DataSet();
            adpt.Fill(ds);

            ddlroomtyp.DataSource = ds;
            ddlroomtyp.DataTextField = "roomtyp";
            ddlroomtyp.DataValueField = "roomtypId";

            ddlroomtyp.DataBind();

            ddlroomtyp.Items.Insert(0,"--Select Room Type--");



        }

        public void displayrentdetail()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open(); 
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            int rtypid;
            rtypid = Convert.ToInt32(ddlroomtyp.SelectedValue);

            cmd.CommandText = "select * from roomdetails where roomtypId=" + rtypid;

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);

            txtrent.Text = ds.Tables[0].Rows[0]["rent"].ToString();
            txtsecurity.Text = ds.Tables[0].Rows[0]["security"].ToString();
            txttotal.Text = ds.Tables[0].Rows[0]["total"].ToString();

        }

        protected void ddlroomtyp_SelectedIndexChanged(object sender, EventArgs e)
        {
            displayrentdetail();

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            if(CheckUserExist())
            {
                Response.Write("<script>alert('User Name already exists try other one');</script>");

            }
            else
            {
                SignupNewUser();
            }

            


        }

        bool CheckUserExist()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT *FROM Register where username='" + txtusername.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count>=1)
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


        void SignupNewUser()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Register(fullname,age,gender,contactnum,email,parentname,parentnum,permanentaddress,roomtyp,username,password,accountstatus) values(@fullname,@age,@gender,@contactnum,@email,@parentname,@parentnum,@permanentaddress,@roomtyp,@username,@password,@accountstatus) ", con);
                cmd.Parameters.AddWithValue("@fullname", txtfullname.Text);
                cmd.Parameters.AddWithValue("@age", txtage.Text);
                cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@contactnum", txtcnumber.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@parentname", txtpname.Text);
                cmd.Parameters.AddWithValue("@parentnum", txtpnum.Text);
                cmd.Parameters.AddWithValue("@permanentaddress", txtpaddress.Text);
                cmd.Parameters.AddWithValue("@roomtyp", ddlroomtyp.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@username", txtusername.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@accountstatus", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registeration Successful');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}