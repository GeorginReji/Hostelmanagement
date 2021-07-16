<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Adduser.aspx.cs" Inherits="Hostelmanagement.Adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5 ">
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
                                <h3> Add User </h3>
                                    
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
                                <label> User Name</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="User Name"></asp:TextBox>
                                    <asp:Button Class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />

                                    </div>
                                    </div>

                                </div>
                              
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                        <br />
                         <div class="row">

                           <div class="col-md-4">
                                <label> Room Number</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button5" Class="btn btn-primary" runat="server" Text="GO" OnClick="Button5_Click" />
                                    </div>
                                    </div>

                                </div>
                            
                            <div class="col-md-4">
                                <label>Room Type</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Room Type" ></asp:TextBox>
                            </div>
                                    
                                </div>
                              <div class="col-md-4">
                                <label>Bed Number</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>

                            </div>
                                    
                                </div>
                            </div>

                        </div>
                   
                                
                                
                                <br />
                         <div class="row">
                            <div class="col-md-4">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                                </div>
                        <div class="col-md-4">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button2_Click" />
                                </div>
                                </div>
                             <div class="col-md-4">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button4" class="btn btn-info btn-lg" runat="server" Text="Update" OnClick="Button4_Click" />
                                </div>
                                </div>
                                </div>
                                <br />

                        </div>

                    </div>
                


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3> Room Details </h3>
                                 
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
                                <asp:GridView class="table table-striped table-hover " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uId" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="uId" HeaderText="uId" InsertVisible="False" ReadOnly="True" SortExpression="uId" />
                                        <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                        <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                                        <asp:BoundField DataField="room_typ" HeaderText="room_typ" SortExpression="room_typ" />
                                        <asp:BoundField DataField="bed_num" HeaderText="bed_num" SortExpression="bed_num" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [adduser]"></asp:SqlDataSource>
                            </div>
                        </div>



                       

                        </div>

                    </div>
                </div>

           
            </div>

            </div>
</asp:Content>
