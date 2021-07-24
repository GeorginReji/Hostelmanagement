<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UsersView.aspx.cs" Inherits="Hostelmanagement.UsersView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                           
                         
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3>Users View</h3>
                                    
                                </center>
                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
            <div class="col-md-12 ">

                <asp:GridView ID="GridView1"  CssClass="table table-success table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="uId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="uId" HeaderText="uId" InsertVisible="False" ReadOnly="True" SortExpression="uId" />
                        <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                        <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Delete"  ControlStyle-cssClass="btn btn-danger" CommandArgument="<%# Container.DataItemIndex %>" OnClick="Button1_Click" Text="Remove" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>


                </asp:GridView>




                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uId], [user_name], [full_name], [room_num] FROM [adduser]" DeleteCommand="DELETE FROM [adduser] WHERE [uId] = @uId">
                    <DeleteParameters>
                        <asp:Parameter Name="uId" Type="Int32" />
                    </DeleteParameters>

                </asp:SqlDataSource>




    </div>
             </div>



                       

                        </div>

                    </div>
                </div>
</asp:Content>
