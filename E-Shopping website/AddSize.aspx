<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="E_Shopping_website.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">



     <div class="container">

                <div class="form-horizontal">
                    <h2>Add Size</h2>
                    <hr />

                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-md-2 control-label" runat="server" Text="Size Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSize" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1txtSize" runat="server" ErrorMessage="Enter valid size" cssClass="text-danger" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
                     <div class="form-group">
                        <asp:Label ID="Label3" cssClass="col-md-2 control-label" runat="server" Text="Brand"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" ErrorMessage="Enter Brand" cssClass="text-danger" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>


                      <div class="form-group">
                        <asp:Label ID="Label4" cssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server" ErrorMessage="Enter Category" cssClass="text-danger" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>



               

                     <div class="form-group">
                        <asp:Label ID="Label2" cssClass="col-md-2 control-label" runat="server" Text="Sub Category"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlSubCategory" runat="server" ErrorMessage="Enter SubCategory" cssClass="text-danger" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>


                    
                     <div class="form-group">
                        <asp:Label ID="Label5" cssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ErrorMessage="Enter Gender" cssClass="text-danger" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>


                    

                
                    


                      <div class="form-group">
                          <div class="col-md-2"></div>
                        <div class="col-md-6">

                            <asp:Button ID="btnAddSize" runat="server" CssClass="btn btn-success" Text="Add Size" OnClick="btnAddSize_Click"   />
                         

                        </div>

                    </div>
          </div>

               
          <h1>
                       Sizes
                   </h1>
        
                     <div class="panel panel-default">

          <div class="panel-heading">All Sizes</div>

          <asp:Repeater ID="rptrSize" runat="server">

              <HeaderTemplate>

                  <table class="table">


              <thead>
                  <tr>
                      <th>
                          #
                      </th>
                      <th>
                          Size
                      </th>
                      <th>
                          Brand
                      </th>
                       <th>
                          Category
                      </th> <th>
                          Sub Category
                      </th> <th>
                          Gender
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
                          <%# Eval("SizeId") %>
                      </th>
                        
                      <th>
                          <%# Eval("SizeName") %>
                      </th>
                      <td>
                          <%# Eval("Name") %>
                      </td>
                        
                      <td>
                          <%# Eval("CatName") %>
                      </td>
                        
                      <td>
                          <%# Eval("SubCatName") %>
                      </td>
                       
                      <td>
                          <%# Eval("GenderName") %>
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
