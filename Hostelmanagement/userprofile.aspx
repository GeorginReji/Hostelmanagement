<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Hostelmanagement.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/studenticon.jpg" /> </center>
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> My Profile </h3>
                                    <span>Account status - </span>
                                    <asp:Label class="badge rounded-pill bg-success" ID="Label1" runat="server" Text="Account Status"></asp:Label>
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
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Age</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
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

                         
                        <div class="row">
                            <div class="col-md-4">
                                <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Name"></asp:TextBox>
                            </div>
                            </div>
                              <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Old Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>
                             <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password" ></asp:TextBox>
                            </div>
                            </div>
                        </div>
                         
                         
                                
                                
                                
                                <br />
                                 <div class="d-grid gap-2 col-6 mx-auto">
                                     <center>
                                     <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Update"  />
                                </center>
                                </div>
                                <br />

                        </div>

                    </div>
                </div>


            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/attendencelogo.png" /> </center>
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> Attendence </h3>
                                 
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
                                <asp:GridView class="table table-striped table-hover " ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>



                       

                        </div>

                    </div>
                </div>

           
            </div>

            </div>
                <a href="adminlogin.aspx">Back to Home</a>

      

</asp:Content>
