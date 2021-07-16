<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RazorpayCallBack.aspx.cs" Inherits="Hostelmanagement.paymentcallback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 runat="server" id="h1message"> </h1>
                <p runat="server" id="payid"></p>
                <p runat="server" id="ordid"></p>

                <p> Click here to go home</p>
                <p> <a class="btn btn-primary btn-lg" href="Payment.aspx" role="button">Home</a> </p>

            </div>


        </div>
    </form>
</body>
</html>
