<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="View_rqst.aspx.cs" Inherits="Hostelmanagement.View_rqst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView CssClass="table" ID="gridview1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="Unnamed_RowCommand" AllowSorting="True" DataKeyNames="username">
        <Columns>

           

            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True"  SortExpression="username" />

            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="accountstatus" HeaderText="Status" />

           

            <asp:TemplateField>
                <ItemTemplate>
                <asp:Button CommandName="Accept"  runat="server" ControlStyle-cssClass="btn btn-primary " CommandArgument="<%# Container.DataItemIndex %>" Text="Accept" PostBackUrl="~/View_rqst.aspx" /> 
            </ItemTemplate>
          </asp:TemplateField>

             <asp:TemplateField>
                <ItemTemplate>
                <asp:Button CommandName="Reject"  runat="server" ControlStyle-cssClass="btn btn-danger" CommandArgument="<%# Container.DataItemIndex %>" Text="Reject"  PostBackUrl="~/View_rqst.aspx"  /> 
            </ItemTemplate>
          </asp:TemplateField>
           

        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fullname], [age], [gender], [email], [accountstatus], [username] FROM [Register]"></asp:SqlDataSource>
</asp:Content>
