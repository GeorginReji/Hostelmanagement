<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Leaveapplication.aspx.cs" Inherits="Hostelmanagement.Leaveapplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto ">
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
                                <h3>Leave Application</h3>
                                    
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="User ID"></asp:TextBox>
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
                            <div class="col-md-6">
                                <label> Leave From</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label> Leave To</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label> Reason</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Reason" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                          </div>
                                
                                <br />
                        <div class="row">
                        <div class="col-md-5 mx-auto">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Apply" />
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
