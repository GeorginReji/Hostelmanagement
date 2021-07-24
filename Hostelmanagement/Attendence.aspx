<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Attendence.aspx.cs" Inherits="Hostelmanagement.Attendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-md-6 mx-auto">
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
                            <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Enter Date"></asp:Label>
                                <div class="form-group">
                                <asp:TextBox ID="TextBox1"  CssClass="form-control" runat="server"></asp:TextBox>

                                </div>
                            </div>
                             <div class="col-md-4">
                              <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="imgs/attendencelogo.png" style="margin-right: 0px; margin-top: 10px" Width="35px" OnClick="ImageButton1_Click" />
            <asp:Calendar ID="Calendar1" runat="server"  Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        </div>
                             <div class="col-md-4">
                                 <div class="d-grid gap-2 col-3">
                                     <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="Button2_Click"  />
                                </div>
                                </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-hover " ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataKeyNames="uId" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="uId" HeaderText="uId" InsertVisible="False" ReadOnly="True" SortExpression="uId" />
                                        <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                        <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                                        <asp:BoundField DataField="room_typ" HeaderText="room_typ" SortExpression="room_typ" />
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" CausesValidation="false" ControlStyle-cssClass="btn btn-primary" CommandName="Present" CommandArgument="<%# Container.DataItemIndex %>" Text="Present" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CausesValidation="false" ControlStyle-cssClass="btn btn-danger" CommandName="Absent" CommandArgument="<%# Container.DataItemIndex %>" Text="Absent" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uId], [user_name], [full_name], [room_num], [room_typ] FROM [adduser]"></asp:SqlDataSource>
                            </div>
                        </div>
                       

                        </div>

                    </div>
                </div>
</asp:Content>
