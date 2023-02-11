<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="E_Shopping_website.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <title>signin</title>
     <meta  name="viewport" content="width=device-width,initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="chrome" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/custom.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <div>
                        <!-- Navbar  starts--->

        
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
               
                    <div class="navbar-header">
                        
                            
                            <img src="Images/Eshopping.png" alt="E-shopping" width="50px"/><strong>E-Shopping</strong> 
                    </div>
                <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li > 
                                        <a href ="DEfault_.aspx">Home</a>
                                    </li>
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                     <li>
                                        <a href="#">Contat Us</a>

                                    </li>
                                     <li>
                                        <a href="#">Blog</a>
                                    </li>
                                     <li class="dropdown">
                                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown" >Products <b class="caret"></b></a>
                                         <ul class="dropdown-menu">
                                             <li class="dropdown-header"><strong>Men</strong></li>
                                
                                
                                             <li> <a href="#">shirt</a></li>
                                             <li> <a href="#">t-shirt</a></li>
                                             <li> <a href="#">jense</a></li>

                                              <li class="dropdown-header"><strong>Women</strong></li>
                                             <li> <a href="#">top</a></li>
                                             <li> <a href="#">dress</a></li>
                                             <li> <a href="#">kurti</a></li>

                                         </ul>
                                    </li>
                                    <li>
                                        <a href="signup.aspx">SignUp</a>
                                    </li>
                                    <li class="active">
                                        <a href="signin.aspx">SignIn</a>
                                    </li>

                                </ul>
                            </div>


                         </div>
            


            </div>
                       </div>
                </div>

                        <!-- navbar ends-->


         

                                   
            

         <br >
         <br >
         <br >

            
            <!-- signin starts--->

            <div class="container">
                <div class="form-horizontal">
                    <h2>Login Form</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" cssClass="col-mod-2" runat="server" Text="UserName"></asp:Label>
                        <div class="col-mod-3">
                            <asp:TextBox ID="txtUsername" cssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1UserName" runat="server" ErrorMessage="Enter valid username" cssClass="text-danger" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                    </div>
               

                
                    <div class="form-group">
                        <asp:Label ID="Label2" cssClass="col-mod-2" runat="server" Text="Password"></asp:Label>
                        <div class="col-mod-3">
                            <asp:TextBox ID="txtPass" cssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Enter valid passweod"  ControlToValidate="txtPass" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                    </div>
               

                    <div class="form-group">
                        <div class="col-mod-6">

                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" cssClass="col-mod-2" runat="server" Text="Remember me"></asp:Label>
                        </div>

                    </div>


                      <div class="form-group">
                        <div class="col-mod-6">
                            <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success" Text="Login" OnClick="btnLogin_Click" />
                        </div>

                    </div>

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-mod-6">
                            <asp:Label ID="lblError"  CssClass="text-danger" runat="server"></asp:Label>
                        </div>

                    </div>


                   




                  

                    </div>
                </div>
            </div>
            </div>




            <!-- signin end -->



        
            </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
                </script>

</body>
</html>
