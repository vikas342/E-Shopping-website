<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="E_Shopping_website.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <meta charset="utf-8" />
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

                        <!-- Navbar  starts--->

        
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
               
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="colapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                            </button>
                            
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
                                    <li class="active">
                                        <a href="signup.aspx">Signup</a>
                                    </li>
                                     <li>
                                        <a href="signin.aspx">Signin</a>
                                    </li>
                                </ul>
                            </div>


                         </div>
            



                       </div>

                        <!-- navbar ends-->


                        <!-- sigup page start-->

                 <div class="center-page">

                     <label class="col-xs-11">User Name: </label>
                     <div class="col-xs-11">

                     <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                     </div>

                     <label class="col-xs-11">Your Full Name: </label>
                     <div class="col-xs-11">

                     <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your Full Name"></asp:TextBox>
                     </div>

                     <label class="col-xs-11">Email: </label>
                     <div class="col-xs-11">

                     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email"></asp:TextBox>
                     </div>


                     <label class="col-xs-11">Password: </label>
                     <div class="col-xs-11">

                     <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                     </div>



                     <label class="col-xs-11">Confirm Password: </label>
                     <div class="col-xs-11">

                     <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm pasword"></asp:TextBox>
                     </div>




                     
                     
                       
                     <label class="col-xs-11"></label>

                      <div class="col-xs-11">



                     <asp:Button ID="txtsignup" runat="server" cssClass="btn btn-success" Text="SignUp" OnClick="txtsignup_Click"></asp:Button>
                     </div>
                    




                 </div>




                                         <!-- sigup page ends-->



                  <!-- footer starts -->

                 <hr >
           <footer class="footer-pos">


                <div class="container">
                    <p class="pull-right">
                        <a href="#">Back to top</a>
                        </p>
                    <p> 2023&copy; E-shoping; <a href="DEfault_.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a>&middot;
                        
                    </p>
                </div>


            </footer>




        </div>
    </form>
</body>
</html>
