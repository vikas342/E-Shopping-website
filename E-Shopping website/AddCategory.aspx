<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="E_Shopping_website.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">


    
      <div class="container">

                <div class="form-horizontal">
                    <h2>Add Category</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-md-2 control-label" runat="server" Text="Category Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtCategory" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1txtCategoryName" runat="server" ErrorMessage="Enter valid Category name" cssClass="text-danger" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
               

                
                    


                      <div class="form-group">
                          <div class="col-md-2"></div>
                        <div class="col-md-6">

                            <asp:Button ID="btnAddCategory" runat="server" CssClass="btn btn-success" Text="ADD Category" OnClick="btnAddCategory_Click" />
                         

                        </div>

                    </div>
          </div>


          
                   <h1>
                       Categories
                   </h1>
        
            <div class="panel panel-default">
          <div class="panel-heading">All Categories</div>

          <asp:Repeater ID="rptrCategories" runat="server">

              <HeaderTemplate>

                  <table class="table">


              <thead>
                  <tr>
                      <th>
                          #
                      </th>
                      <th>
                          Categories
                      </th>
                      <th>
                          Edit
                      </th>
                  </tr>
              </thead>

              <tbody>

              </HeaderTemplate>

              <ItemTemplate>
                   <tr>
                      <th>
                          <%# Eval("CatId") %>
                      </th>

                      <td>
                          <%# Eval("CatName") %>
                      </td>

                      <td>
                          Edit
                      </td>
                  </tr>

              </ItemTemplate>

              <FooterTemplate>

                  
               </tbody>

          </table>


              </FooterTemplate>

             </asp:Repeater>


              
                </div>
        

               


                   




                  

                    </div>
</asp:Content>
