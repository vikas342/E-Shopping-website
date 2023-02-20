<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subcategory.aspx.cs" Inherits="E_Shopping_website.Subcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">

    
      <div class="container">

                <div class="form-horizontal">
                    <h2>Add SubCategory</h2>
                    <hr />

                     <div class="form-group">
                        <asp:Label ID="Label2" cssClass="col-md-2 control-label" runat="server" Text="Main CategoryID"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" ErrorMessage="Enter MainCategory ID" cssClass="text-danger" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-md-2 control-label" runat="server" Text="SubCategory Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSubCategory" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1txtSubCategoryName" runat="server" ErrorMessage="Enter valid Category name" cssClass="text-danger" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
               

                
                    


                      <div class="form-group">
                          <div class="col-md-2"></div>
                        <div class="col-md-6">

                            <asp:Button ID="btnAddCategory" runat="server" CssClass="btn btn-success" Text="Add SubCategory" OnClick="btnAddCategory_Click"  />
                         

                        </div>

                    </div>
          </div>

               


                   
            <h1>
                       SubCategories
                   </h1>
                    <div class="panel panel-default">


          <div class="panel-heading">All SubCategories</div>

          <asp:Repeater ID="rptrSubCategories" runat="server">

              <HeaderTemplate>

                  <table class="table">


              <thead>
                  <tr>
                      <th>
                          #
                      </th>
                      <th>
                          SubCategories
                      </th>
                       <th>
                           Main Category
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
                          <%# Eval("SubCatId") %>
                      </th>
                      <td>
                          <%# Eval("SubCatName") %>
                      </td>
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
