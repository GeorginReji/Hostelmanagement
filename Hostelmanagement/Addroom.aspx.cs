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
    public partial class Addroom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var value = DropDownList1.SelectedValue;
            if (value == "Single")
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("B1");
            }
            else if (value == "Double")
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("B1");
                DropDownList2.Items.Add("B2");

            }
            else
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("B1");
                DropDownList2.Items.Add("B2");
                DropDownList2.Items.Add("B3");

            }

        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete FROM addroom where room_num='" + TextBox2.Text + "' and bed_num='" + DropDownList2.SelectedItem.Text + "';", con) ;
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            Response.Write("<script>alert('User Deleted ');</script>");
            con.Close();
            TextBox2.Text = "";
            DropDownList2.SelectedItem.Text = "";
            DropDownList2.SelectedItem.Text = "";
        }

       
        bool checkroom()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT *FROM addroom where room_num='" + TextBox2.Text + "' AND bed_num = '"+ DropDownList2.SelectedItem.Text + "';", con);
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

        void addroom()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

            // Response.Write("<script>alert('testing');</script>");
            try
            {


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO addroom(room_typ,bed_num,room_num) values(@roomtyp,@bednum,@roomnum) ", con);
                cmd.Parameters.AddWithValue("@roomtyp", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bednum", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@roomnum", TextBox2.Text);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Room added');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkroom())
            {
                Response.Write("<script>alert('Room Already Added ');</script>");
            }
            else
            {
                addroom();
                GridView1.DataBind();
                TextBox2.Text = "";
                DropDownList2.SelectedItem.Text = "";
                DropDownList2.SelectedItem.Text = "";
            }
        }
    }
}