<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="ComplaintBooking.aspx.cs" Inherits="Hostelmanagement.ComplaintBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/Leave.png" /> </center>
                            </div>
                         
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3>Complaint Booking</h3>
                                    
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
                                <label> User ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button5" Class="btn btn-primary" runat="server" Text="GO" OnClick="Button5_Click" />
                                        </div>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="User Name" ></asp:TextBox>
                            </div>
                            </div>
                        </div>
                       <div class="row">
                            <div class="col-md-6">
                                <label>Room Type</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Room Type" ></asp:TextBox>
                                                                        
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Room Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Room Number" ></asp:TextBox>
                            </div>
                            </div>
                            

                        </div>
                         <div class="row">
                            <div class="col">
                                <label> Complaint</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Complaint" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                          </div>
                                
                                <br />
                        <div class="row">
                        <div class="col-md-5 mx-auto">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Book Complaint" OnClick="Button2_Click" />
                                </div>
                                </div>
                                </div>
                                <br />

                        </div>

                    </div>
                </div>

          

          

           
            </div>

            </div>
</asp:Content>
