using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostelmanagement
{
    public partial class Razorpaycheckout : System.Web.UI.Page
    {
        public string uname;
        public string total;
        public string cnum;
        public string fname;
        public string roomtyp;
        public string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            total = (Convert.ToInt32(Session["Total"].ToString()) * 100).ToString();
            cnum = Session["Cnum"].ToString();
            fname = Session["Fname"].ToString();
            roomtyp = Session["Roomtyp"].ToString();
            email = Session["Email"].ToString();

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", total);
            input.Add("currency", "INR");
            input.Add("payment_capture", 1);

            string key = "rzp_test_bh9m9ZtBXILk6E";
            string secret = "PnfkQH6wwkqEu4ViN75XtIJr";

            RazorpayClient client = new RazorpayClient(key, secret);

            Razorpay.Api.Order order = client.Order.Create(input);
            uname = order ["id"].ToString();
        }
    }
}