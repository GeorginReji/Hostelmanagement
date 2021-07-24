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
    public partial class foodmanagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                showdata();
            }

        }
        protected  void showdata()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            SqlConnection conn = new SqlConnection();
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("SELECT * from tbl_food ", con);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();

        }

        void additem()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            // Response.Write("<script>alert('testing');</script>");
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_food(day,breakfast,lunch,dinner) values(@day,@breakfast,@lunch,@dinner) ", con);
                cmd.Parameters.AddWithValue("@day", ddldays.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@breakfast", txtbreakfast.Text);
                cmd.Parameters.AddWithValue("@lunch", txtlunch.Text);
                cmd.Parameters.AddWithValue("@dinner", txtdinner.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('item added');</script>");
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            additem();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            
            con.Open();
            Label fId = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            TextBox day = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox breakfast = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox lunch = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox dinner = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;


            //updating the record  
            SqlCommand cmd = new SqlCommand("Update tbl_food set day='" + day.Text + "',breakfast='" + breakfast.Text + "',lunch='" + lunch.Text + "',dinner='" + dinner.Text + "' where fID=" + Convert.ToInt32(fId.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            showdata();

        }
    }
}