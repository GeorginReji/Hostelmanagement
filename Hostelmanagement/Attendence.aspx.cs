using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class Attendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
        }

        void insertdata()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            foreach (GridViewRow gr in GridView1.Rows)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_attendence_rec(U_name,F_name,R_numb,A_date,attendence) values(@Uname,@fullname,@rnumb,@adate,@attendence) ", con);
                cmd.Parameters.AddWithValue("@Uname", gr.Cells[1].Text);
                cmd.Parameters.AddWithValue("@fullname", gr.Cells[2].Text);
                cmd.Parameters.AddWithValue("@rnumb", gr.Cells[3].Text);
                cmd.Parameters.AddWithValue("@adate", Convert.ToDateTime(TextBox1.Text));
                cmd.Parameters.AddWithValue("@attendence", "Unmarked");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            if (e.CommandName == "Present")
            {
                SqlCommand cmd = new SqlCommand("update tbl_attendence_rec set attendence ='Present' where U_name= '" + row.Cells[1].Text + "' and A_date='" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy-MM-dd") + "' ", con);
                cmd.ExecuteNonQuery();

            }
            if (e.CommandName == "Absent")
            {
                SqlCommand cmd = new SqlCommand("update tbl_attendence_rec set attendence ='Absent' where U_name= '" + row.Cells[1].Text + "' and A_date='" + Convert.ToDateTime(TextBox1.Text).ToString("yyyy-MM-dd") + "' ", con);
                cmd.ExecuteNonQuery();

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            insertdata();
        }
    }
}