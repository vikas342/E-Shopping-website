<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="E_Shopping_website.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">


      <div class="container">

                <div class="form-horizontal">
                    <h2>Add Brand</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-md-2 control-label" runat="server" Text="BrandName"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtBrand" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1BrandName" runat="server" ErrorMessage="Enter valid Brandname" cssClass="text-danger" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
               

                
                    


                      <div class="form-group">
                          <div class="col-md-2"></div>
                        <div class="col-md-6">

                            <asp:Button ID="btnAddBrand" runat="server" CssClass="btn btn-success" Text="ADD" OnClick="btnAddBrand_Click" />
                         

                        </div>

                    </div>
          </div>

               


                   




                  

                    </div>
                

</asp:Content>
