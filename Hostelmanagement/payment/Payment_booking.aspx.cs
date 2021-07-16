using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;


namespace ARS.payment
{
    public partial class Payment_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPay_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-GSD62VI\\SQLEXPRESS01; Initial Catalog = ARS; Integrated Security = true");
            con.Open();
            SqlCommand cmd = new SqlCommand(" select * from account where cus_email='" + txtemail.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                
                double ac_bal = Convert.ToDouble(dr[5].ToString());
                if (txtcardno.Text == dr[1].ToString() && txtmon.Text == dr[2].ToString() && txtyr.Text == dr[3].ToString() && txtcvv.Text == dr[4].ToString() && txtemail.Text == dr[6].ToString() && txtcardname.Text == dr[7].ToString())

                {

                    string amt = Session["totamt"].ToString();
                    double a = Convert.ToDouble(amt);


                    if (a > ac_bal)
                    {
                        Response.Write("payment declined");
                    }
                    else
                    {
                        dr.Close();

                        double bal = ac_bal - a;

                        SqlCommand cmd2 = new SqlCommand("update account set amount= " + bal + " ", con);
                        cmd2.ExecuteNonQuery();
                        if (Session["class"].ToString() == "Business Class")
                        {
                            int bseat = Convert.ToInt32(Session["bseat_available"]) - 1;
                            SqlCommand cm1 = new SqlCommand("update moreinfo set bseat_available= " + bseat + " ", con);

                            cm1.ExecuteNonQuery();
                        }
                        if (Session["class"].ToString() == "Economy Class")
                        {
                            int eseat = Convert.ToInt32(Session["eseat_available"]) - 1;
                            SqlCommand cm2 = new SqlCommand("update moreinfo set bseat_available= " + eseat + " ", con);

                            cm2.ExecuteNonQuery();
                        }
                        SqlCommand cmd4 = new SqlCommand("insert into PassengerFlightDetails values('" + Session["journeyDate"] + "','" + Session["source"] + "','" + Session["destination"] + "','" + Session["dept_time"] + "','" + Session["class"] + "','" + Session["mealstype"] + "','" + Session["type"] + "','" + Session["flightno"] + "','" + Session["seatno"] + "')select @@Identity", con);

                        int res = Convert.ToInt32(cmd4.ExecuteScalar());

                       
                        SqlCommand cmd5 = new SqlCommand("insert into PassengerPersonalInfo values('" + Session["lname"] + "','" + Session["fname"] + "','" + Session["phn"] + "','" + Session["email"] + "','" + Session["nationality"] + "','" + Session["passportno"].ToString() + "','" + Session["dob"] + "','" + Session["address"] + "','" + Convert.ToInt32(Session["pincode"]) + "'," + res + ",'" + Session["uname"] + "') ", con);
                        cmd5.ExecuteNonQuery();
                        
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Booked Sucessfully');window.location ='../User/User_Home.aspx';", true);

            }
                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter valid Data');window.location ='Payment_booking.aspx';", true);

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter valid Data');window.location ='Payment_booking.aspx';", true);
             
            }
        }
    }
}