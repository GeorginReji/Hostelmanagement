<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profilemanager.aspx.cs" Inherits="Hostelmanagement.Profilemanager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/userlogo.jpg" /> </center>
                                
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> User Manager </h3>
                                   
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />    
                                </div>
                                    </div>
                            </div>
                              <div class="col-md-6">
                                <label> User Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>
                            </div>
                           
                            

                        </div>
                         
                        <div class="row">
                           <div class="col-md-6">
                                <label> Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>E-mail ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label> Room Type</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Room Type"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Room Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Room Number" TextMode="Phone"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label> Permanent Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Permanent Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                          </div>
                        <br />

                         
                         
                                
                                
                                
                                <br />
                                 <div class="d-grid gap-2 col-6 mx-auto">
                                     <center>
                                     <asp:Button ID="Button1" class="btn btn-danger btn-lg" runat="server" Text="Delete User" OnClick="Button1_Click" />
                                </center>
                                </div>
                                <br />

                        </div>

                    </div>
                </div>


           

           
            </div>

            </div>
</asp:Content>
