<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="foodview.aspx.cs" Inherits="Hostelmanagement.WebForm6" %>
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
                                <h3> Food Menu</h3>
                                    
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

                <asp:GridView ID="GridView1" CssClass="table table-success table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="fId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField HeaderText="fId" InsertVisible="False" SortExpression="fId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("fId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("fId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="day" SortExpression="day">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("day") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("day") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="breakfast" SortExpression="breakfast">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("breakfast") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("breakfast") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="lunch" SortExpression="lunch">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lunch") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lunch") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="dinner" SortExpression="dinner">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dinner") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("dinner") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>


                </asp:GridView>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fId], [day], [breakfast], [lunch], [dinner] FROM [tbl_food]"></asp:SqlDataSource>


    </div>
             </div>



                       

                        </div>

                    </div>
                </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
