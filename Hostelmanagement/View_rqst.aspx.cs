using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Hostelmanagement
{
    public partial class View_rqst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Unnamed_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
            con.Open();
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gridview1.Rows[index];

            if (e.CommandName == "Accept" )
            {
                SqlCommand cmd = new SqlCommand("update Register set accountstatus ='Accept' where username= '" + row.Cells[0].Text + "'", con);
                cmd.ExecuteNonQuery();
                gridview1.DataBind();

                
            }
            if (e.CommandName == "Reject")
            {
                SqlCommand cmd = new SqlCommand("update Register set accountstatus ='Reject' where username= '" + row.Cells[0].Text + "'", con);
                cmd.ExecuteNonQuery();
                gridview1.DataBind();


            }
        }
    }
}