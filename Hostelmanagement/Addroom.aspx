<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Addroom.aspx.cs" Inherits="Hostelmanagement.Addroom" %>
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
                                <center> <img width="100px" src="imgs/roomicon.jpg" /> </center>
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">  
                                <center>
                                <h3> Add Room </h3>
                                    
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
                                <label>Room Type</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" >
                                        <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
                                        <asp:ListItem Text="Double" Value="Double">Double</asp:ListItem>
                                        <asp:ListItem Text="Triple" Value="Triple">Triple</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>
                            
                            
                              <div class="col-md-5">
                                <label>Bed Number </label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" >

                                    </asp:DropDownList>
                                    
                                </div>
                            </div>

                        </div>
                        <div class="col-md-5">
                                <label>Room Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Room Number" ></asp:TextBox>
                            </div>
                            </div>
                        <br />                
                                                                                   
                        <div class="row">
                            <div class="col-md-4">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Add" OnClick="Button1_Click1" />  
                                </div>
                                </div>
                        <div class="col-md-4">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button2_Click" />
                                </div>
                                </div>
                            
                                </div>
                                <br />

                        </div>

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
                                <asp:GridView class="table table-striped table-hover " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="room_typ" HeaderText="room_typ" SortExpression="room_typ" />
                                        <asp:BoundField DataField="bed_num" HeaderText="bed_num" SortExpression="bed_num" />
                                        <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [room_typ], [bed_num], [room_num] FROM [addroom]"></asp:SqlDataSource>
                            </div>
                        </div>



                       

                        </div>

                    </div>
                </div>

           
            </div>

            </div>
</asp:Content>
