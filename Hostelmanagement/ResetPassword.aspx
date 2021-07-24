<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Hostelmanagement.ResetPassword" %>
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
                                <center>
                                <h3>Reset Password </h3>
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
                                <label> New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                                
                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                                <br />
                                 <div class="form-group ">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-block w-100 btn-lg" runat="server" Text="Submit" OnClick="Button1_Click"  />
                                </div>
                                <br />
                              

                        </div>

                    </div>
                </div>

    </div>
               

    </div>

    </div>
        </div>
</asp:Content>
