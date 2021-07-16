<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Hostelmanagement.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/bookinglogo.png" /> </center>
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> Room Booking </h3>
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-5">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Age</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtage" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                            </div>
                            </div>
                            <div class="col-md-4">
                                <label>Gender</label>
                                <asp:DropDownList CssClass="form-control" ID="ddlgender" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                         <asp:ListItem Text="Male" Value="M" />
                                         <asp:ListItem Text="Female" Value="F" />
                        
                                    </asp:DropDownList>
                            </div>

                        </div>
                         
                        <div class="row">
                           <div class="col-md-6">
                                <label> Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtcnumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>E-mail ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label> Parent Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtpname" runat="server" placeholder="Parent Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Parent Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtpnum" runat="server" placeholder="Parent Number" TextMode="Phone"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label> Permanent Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtpaddress" runat="server" placeholder="Permanent Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                          </div>
                        <br />

                         <div class="row">
                            <div class="col-md-4 mx-auto">
                                <label>Room Type</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="ddlroomtyp" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlroomtyp_SelectedIndexChanged">
                                        
                                    </asp:DropDownList>
                            </div>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Rent</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtrent" runat="server" placeholder="Rent" ReadOnly="True"></asp:TextBox>
                            </div>
                            </div>
                              <div class="col-md-4">
                                <label>Security</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtsecurity" runat="server" placeholder="Security" ReadOnly="True"></asp:TextBox>
                            </div>
                            </div>
                             <div class="col-md-4">
                                <label>Total</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txttotal" runat="server" placeholder="Total" ReadOnly="True"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label>User name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtusername" runat="server" placeholder="New User Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                         
                         
                                
                                
                                
                                <br />
                                 <div class="d-grid gap-2 col-6 mx-auto">
                                     <center>
                                     <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Book Now" OnClick="Button1_Click" />
                                </center>
                                </div>
                                <br />

                        </div>

                    </div>
                </div>

    </div>
                <a href="adminlogin.aspx">Back to Home</a>

    </div>

   
</asp:Content>
