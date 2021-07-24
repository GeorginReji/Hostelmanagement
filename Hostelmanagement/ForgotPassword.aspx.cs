using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
	public partial class ForgotPassword : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");

			SqlCommand cmd = new SqlCommand("select * from Register where email='" + TextBox1.Text + "'", conn);
			conn.Open();
			SqlDataAdapter sda = new SqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			sda.Fill(dt);
			if (dt.Rows.Count != 0)
			{
				String myGUID = Guid.NewGuid().ToString();
				int Uid = Convert.ToInt32(dt.Rows[0][0]);
				SqlCommand cmd1 = new SqlCommand("insert into resetpwd values('" + myGUID + "','" + Uid + "',getdate())", conn);
				cmd1.ExecuteNonQuery();
				//send email
				try
				{
					String ToEmailAddress = dt.Rows[0][5].ToString();
					String Username = dt.Rows[0][1].ToString();
					String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/>https://localhost:44303/ResetPassword.aspx?Uid=" + myGUID;
					MailMessage PassRecMail = new MailMessage("demo09492@gmail.com", ToEmailAddress);
					PassRecMail.Body = EmailBody;
					PassRecMail.IsBodyHtml = true;
					PassRecMail.Subject = "Reset Password";
					PassRecMail.Priority = MailPriority.High;
					SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
					SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
					SMTP.UseDefaultCredentials = false;
					SMTP.Credentials = new NetworkCredential()
					{
						UserName = "demo09492@gmail.com",
						Password = "demo@1234"
					};
					SMTP.EnableSsl = true;
					SMTP.Send(PassRecMail);
					Response.Write("<script>alert('Check your email to reset your password.');</script>");
					TextBox1.Text = "";
				}
				catch (Exception)
				{
					Response.Write("<script>alert('Message not sent !');</script>");
				}
			}
			else
			{
				Response.Write("<script>alert('OOPS This email id DOES NOT  exist in our database !');</script>");
			}
		}
	}
}