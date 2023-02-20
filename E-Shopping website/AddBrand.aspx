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

               


                   <h1>
                       Brands
                   </h1>
        
          <div class="panel panel-default">

          <div class="panel-heading">All Brands</div>

          <asp:Repeater ID="rptrBrands" runat="server">

              <HeaderTemplate>

                  <table class="table">


              <thead>
                  <tr>
                      <th>
                          #
                      </th>
                      <th>
                          Brand
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
                          <%# Eval("BrandId") %>
                      </th>

                      <td>
                          <%# Eval("Name") %>
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
