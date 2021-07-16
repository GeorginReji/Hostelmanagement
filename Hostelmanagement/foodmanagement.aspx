<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="foodmanagement.aspx.cs" Inherits="Hostelmanagement.foodmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    



     <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                       
                                <div class="row">
            <div class="col-md-12 ">
              
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
                            <div class="col-md-10">                
                               
                                <asp:Label Text="Day" runat="server" />                       
                                <asp:DropDownList CssClass="form-control" ID="ddldays" runat="server">
                                <asp:ListItem Text="Sunday" Value="Sunday" />
                                <asp:ListItem Text="Monday" Value="Monday" />
                                <asp:ListItem Text="Tuesday" Value="Tuesday" />
                                <asp:ListItem Text="Wenesday" Value="Wenesday" />
                                <asp:ListItem Text="Thursday" Value="Thursday" />
                                <asp:ListItem Text="Friday" Value="Friday" />
                                <asp:ListItem Text="Saturday" Value="Saturday" />
                                </asp:DropDownList> 
                                   
                            </div>                           
          

                          <div class="row">
                           <div class="col-md-10">
                                <label> Breakfast</label>
                                  <asp:TextBox CssClass="form-control" ID="txtbreakfast" runat="server" ></asp:TextBox>
                              
                                
                            </div>
                           
                        </div>

                           <div class="row">
                           <div class="col-md-10">
                               
                               <asp:Label ID="Label1" runat="server" Text="Lunch"></asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="txtlunch" runat="server"></asp:TextBox>
                                
                            </div>
                           
                        </div>

                           <div class="row">
                           <div class="col-md-10">
                                <label> Dinner</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtdinner" runat="server"></asp:TextBox>
                                </div>
                            </div>
                           
                        </div>                                             
                        </div>
                        <div class="row">
                        <div class="col-md-5 mx-auto">
                                 <div class="d-grid gap-2 col-6">
                                     <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="ADD" OnClick="Button2_Click"  />
                                </div>
                                </div>
                                </div>                             
                       

                   
                </div>           
            </div>


                        </div>

                    </div>
                </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
            <div class="col-md-12 ">

    <asp:GridView ID="GridView1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="fId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="fId" InsertVisible="False" SortExpression="fId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="day" SortExpression="day">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("day") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("day") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="breakfast" SortExpression="breakfast">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("breakfast") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("breakfast") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="lunch" SortExpression="lunch">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lunch") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("lunch") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="dinner" SortExpression="dinner">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dinner") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("dinner") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>   
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fId], [day], [lunch], [breakfast], [dinner] FROM [tbl_food]" UpdateCommand="UPDATE tbl_food set day = @day, breakfast=@breakfast,lunch=@lunch,dinner=@dinner where fId=@fId " ></asp:SqlDataSource>

    </div>
             </div>



                       

                        </div>

                    </div>
                </div>

           
            </div>

            </div>





     
    <br />
    <br />
    
       

    



          







<%--        <div class="">
            <div class="form-group">
                <div class="row" >
                    <div class="col-md-2">
                        <asp:Label Text="Day" runat="server" />
                        <div class="col-md-10">
                            <asp:DropDownList ID="ddldays" runat="server">
                                <asp:ListItem Text="Sunday" Value="Sunday" />
                                <asp:ListItem Text="Monday" Value="Monday" />
                                <asp:ListItem Text="Tuesday" Value="Tuesday" />
                                <asp:ListItem Text="Wenesday" Value="Wenesday" />
                                <asp:ListItem Text="Thursday" Value="Thursday" />
                                <asp:ListItem Text="Friday" Value="Friday" />
                                <asp:ListItem Text="Saturday" Value="Saturday" />
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                 <div class="row" >
                    <div class="col-md-2">
                        <asp:Label Text="BreakFast" runat="server" />
                        <div class="col-md-10">
                            <asp:TextBox ID="txtbf" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                 <div class="row" >
                    <div class="col-md-2">
                        <asp:Label Text="Lunch" runat="server" />
                        <div class="col-md-10">
                            <asp:TextBox ID="txtlunch" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                 <div class="row" >
                    <div class="col-md-2">
                        <asp:Label Text="Dinner" runat="server" />
                        <div class="col-md-10">
                            <asp:TextBox ID="txtdinner" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>



            </div>           
        </div>--%>
       
        


    
</asp:Content>
