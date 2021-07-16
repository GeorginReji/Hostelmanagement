using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
	public partial class Resetpwd : System.Web.UI.Page
	{

		string GUIDvalue;
		DataTable dt = new DataTable();
		int Uid;
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

			
			
				GUIDvalue = Request.QueryString["Uid"];
				if (GUIDvalue != null)
				{
					SqlCommand cmd = new SqlCommand("select * from resetpwd where resetid='" + GUIDvalue + "'", conn);
					conn.Open();
					SqlDataAdapter sda = new SqlDataAdapter(cmd);
					sda.Fill(dt);
					if (dt.Rows.Count != 0)
					{
						Uid = Convert.ToInt32(dt.Rows[0][1]); 
					}
					else
					{
						Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
					}
				}
			else
			{
				Response.Redirect("~/forgotpwd.aspx");
			}

			if (!IsPostBack)
			{
				if (dt.Rows.Count != 0)
				{
					TextBox1.Visible = true;
					TextBox2.Visible = true;
					Button1.Visible = true;
				}
				else
				{
					Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
				}
			}
		}

	protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

			if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox1.Text == TextBox2.Text)
			{
				
				
					SqlCommand cmd = new SqlCommand("update Register set password='" + TextBox1.Text + "' where Rid='" + Uid + "'", conn);
					conn.Open();
					cmd.ExecuteNonQuery();
					SqlCommand cmd2 = new SqlCommand("delete from resetpwd where Uid='" + Uid + "'", conn);
					cmd2.ExecuteNonQuery();
					Response.Write("<script>alert('Password Successfully Changed');</script>");
				
			}
			else
			{
				Response.Write("<script>alert('All fields are mandatory');</script>");
			}
		}
	}
}
