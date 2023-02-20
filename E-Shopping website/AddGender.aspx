<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="E_Shopping_website.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConntentPlaceHolder1" runat="server">


    
      <div class="container">

                <div class="form-horizontal">
                    <h2>Add Gender</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtGender" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1Gender" runat="server" ErrorMessage="Enter valid Gender" cssClass="text-danger" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
               

                
                    


                      <div class="form-group">
                          <div class="col-md-2"></div>
                        <div class="col-md-6">

                            <asp:Button ID="btnAddBrand" runat="server" CssClass="btn btn-success" Text="ADD" OnClick="btnAddGender_Click" />
                         

                        </div>

                    </div>
          </div>

               


                   
           <h1>
                       Gender
                   </h1>
        
                      <div class="panel panel-default">


          <div class="panel-heading">All Gender</div>

          <asp:Repeater ID="rptrGender" runat="server">

              <HeaderTemplate>

                  <table class="table">


              <thead>
                  <tr>
                      <th>
                          #
                      </th>
                      <th>
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
                          <%# Eval("GenderId") %>
                      </th>
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
