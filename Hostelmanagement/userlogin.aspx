<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Hostelmanagement.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="150px" src="imgs/userlogo.jpg" /> </center>
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> Member login </h3>
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <label> Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Id"></asp:TextBox>
                                </div>
                                
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                                <br />
                                 <div class="form-group ">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-block w-100 btn-lg" runat="server" Text="Log in" OnClick="Button1_Click" />
                                </div>
                                <br />
                              

                        </div>

                    </div>
                </div>

    </div>
                <a href="adminlogin.aspx">Admin login</a> <br />
                <a href="forgotpwd.aspx">Forgot Password</a>

    </div>

    </div>
        </div>
</asp:Content>
