<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="Hostelmanagement.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="enter password reset Gmail"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="213px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <asp:Label ID="Label2" runat="server" Text="Your password reset link is send to your mail" Visible="False"></asp:Label>
        </div>
        
    </form>
</body>
</html>
