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
    public partial class PaymentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillddlroomtyp();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            btnGo();

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

            ddlroomtyp.Items.Insert(0, "--Select Room Type--");



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

                SqlCommand cmd = new SqlCommand("SELECT *FROM Register where username='" + TextBox1.Text + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0][1].ToString();
                    txtcnumber.Text=dt.Rows[0][4].ToString();
                    txtemail.Text = dt.Rows[0][5].ToString();

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

        bool AlreadyPaid()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                
                    con.Open();
               

                SqlCommand cmd = new SqlCommand("SELECT *FROM payments where username='" + TextBox1.Text + "' ;", con);
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
        protected void ddlroomtyp_SelectedIndexChanged(object sender, EventArgs e)
        {
            displayrentdetail();
        }
        void addpayment()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            // Response.Write("<script>alert('testing');</script>");
            try
            {


               
                                   

                SqlCommand cmd = new SqlCommand("INSERT INTO payments(username,fullname,pdate,roomtyp,amount) values(@username,@fullname,@pdate,@roomtyp,@amount) ", con);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@fullname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@pdate", TextBox5.Text);
                cmd.Parameters.AddWithValue("@roomtyp", ddlroomtyp.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@amount",txttotal.Text);

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

                Session["Uname"] = TextBox1.Text;
                Session["Fname"] = TextBox4.Text;
                Session["Date"] = TextBox5.Text;
                Session["Cnum"] = txtcnumber.Text;
                Session["Email"] = txtemail.Text;
                Session["Roomtyp"] = ddlroomtyp.SelectedValue;
                Session["Total"] = txttotal.Text;
                addpayment();
                Response.Redirect("Razorpaycheckout.aspx");

                

            }
        }

       
    }
}