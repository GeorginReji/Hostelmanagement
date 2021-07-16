﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Razorpaycheckout.aspx.cs" Inherits="Hostelmanagement.Razorpaycheckout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Razorpay Checkout Page</title>
</head>
<body>
   <form action="RazorpayCallBack.aspx" method="post">
        <script
            src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="rzp_test_bh9m9ZtBXILk6E"
            data-amount="<%=total%>"
            data-name="<%=fname%>"
            data-description="<%=roomtyp%>"
            data-order_id="<%=uname%>"
            data-image="https://razorpay.com/favicon.png"
            data-buttontext="Pay with Razorpay"
            data-prefill.name="<%=fname%>"
            data-prefill.email="<%=email%>"
            data-prefill.contact="<%=cnum%>"
            data-theme.color="#F37254">
        </script>
    </form>
</body>
</html>
