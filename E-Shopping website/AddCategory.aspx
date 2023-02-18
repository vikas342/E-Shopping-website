<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="E_Shopping_website.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">


    
      <div class="container">

                <div class="form-horizontal">
                    <h2>Add Brand</h2>
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

               


                   




                  

                    </div>
</asp:Content>
