using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class UsersView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('User Removed')</script>");
        }

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        //    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\georg\\source\\repos\\Hostelmanagement\\Hostelmanagement\\App_Data\\Hostel_db.mdf;Integrated Security=True");
        //    con.Open();
        //    string query = "delete from adduser where uId = " + id ;
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    int row = cmd.ExecuteNonQuery();
        //    con.Close();
        //    if (row>0)
        //    {
        //        GridView1.DataBind();
        //    }
        //}
    }
}