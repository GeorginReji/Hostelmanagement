<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FeedbackView.aspx.cs" Inherits="Hostelmanagement.FeedbackView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                <h3>Feedback View</h3>
                                    
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div>

                                <asp:GridView ID="GridView1" CssClass="table table-success table-striped table-hover" OnRowCommand="GridView1_RowCommand" runat="server" AutoGenerateColumns="False" DataKeyNames="cId" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="cId" HeaderText="cId" InsertVisible="False" ReadOnly="True" SortExpression="cId" />
                                        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                        <asp:BoundField DataField="Room_Numb" HeaderText="Room_Numb" SortExpression="Room_Numb" />
                                        <asp:BoundField DataField="complaint" HeaderText="complaint" SortExpression="complaint" />
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandArgument="<%# Container.DataItemIndex %>" CommandName="Delete" Text="Delete" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cId], [userid], [UserName], [Room_Numb], [complaint] FROM [tbl_complaint]" DeleteCommand="DELETE FROM [tbl_complaint] WHERE [cId] = @cId"></asp:SqlDataSource>
                              
                        </div>



                        </div>
                            </div>

                            </div>
                        </div>
</asp:Content>


                              