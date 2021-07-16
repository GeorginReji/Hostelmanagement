<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetpwd.aspx.cs" Inherits="Hostelmanagement.Resetpwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Reset password<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="New password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
