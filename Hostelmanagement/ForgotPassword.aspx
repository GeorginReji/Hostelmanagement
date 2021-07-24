<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Hostelmanagement.ForgotPassword" %>
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
                                <h3> Forgot Password </h3>
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
                                <label>Enter Regisred Email Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email Id"></asp:TextBox>
                                </div>
                                
                              
                                <br />
                                 <div class="form-group ">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-block w-100 btn-lg" runat="server" Text="Submit" OnClick="Button1_Click" />
                                </div>
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Your password reset link is send to your mail" Visible="False"></asp:Label>
                              

                        </div>

                    </div>
                </div>

    </div>
                

    </div>

    </div>
        </div>

</asp:Content>
