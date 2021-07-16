<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Hostelmanagement.PaymentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto ">
                <div class="card">
                    <div class="card-body ">
                        <div class="row">
                            <div class="col">
                                <center> <img width="100px" src="imgs/rnt.png" /> </center>
                            </div>
                         
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> Payment</h3>
                                    
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                     <div class="row">

                          <div class="col-md-3">
                                <label> User Name</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox>
                                    <asp:Button Class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />

                                    </div>
                                    </div>

                                </div>
                         
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Full Name" ></asp:TextBox>
                            </div>
                            </div>
                                                 
                            <div class="col-md-5">
                                <label> Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
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
                            <div class="col-md-5 mx-auto">
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
                        <div class="col-md-5 mx-auto">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Pay Now" OnClick="Button2_Click" />
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
