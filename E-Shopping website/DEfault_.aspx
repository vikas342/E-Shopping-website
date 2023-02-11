<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEfault_.aspx.cs" Inherits="E_Shopping_website.DEfault_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Shoppin website</title>
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


            <!-- image slider starts--->

            
<div class="container">
    <br />
    <br />
    <br />


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">

          <a href="#">
                <img src="Images/banner02.png" alt="Electornics" style="width:100%; height:400px">
          </a>

      </div>

      <div class="item">
          <a href="#">
            <img src="Images/banner_5.jpg" alt="fashion" style="width:100%;height:400px">
          </a>
      </div>
    
      <div class="item">
          <a href="#">

                <img src="Images/b4.png" alt="offers" style="width:100%;height:400px">
          </a>
      </div>
          <div class="item">

               <a href="#">

              <img src="Images/banner_6.jpeg" alt="fashion" style="width:100%;height:400px">
          </a>
        
      </div>


    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


                        <!-- image slider ends--->


                                   
            

            <hr style="border-color:white">
            
            <!-- middle content starts--->


    <div class="container center">
        
        <div class="row">

            <div class="col-lg-4">

                <img class="img-circle"  src="IMages/apple_iphone-12_.jpg" alt="phone image" width="200px" height="200px"/>
                <h2>
                    Mobiles
                </h2>
                <p> 
                    15 cm (6.1-inch) Super Retina XDR display
Cinematic mode adds shallow depth of field and shifts focus automatically in your videos
Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording
12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording
A15 Bionic chip for lightning-fast performance
                </p>
                <p>
                    <a href="#" class="btn btn-default" role="button" >View more</a>
                </p>
            </div>

            <div class="col-lg-4">

                <img class="img-circle"  src="IMages/fashion1.png" alt="phone image" width="200px" height="200px"/>
                <h2>
                    Accesories
                </h2>
                <p> 
                    15 cm (6.1-inch) Super Retina XDR display
Cinematic mode adds shallow depth of field and shifts focus automatically in your videos
Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording
12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording
A15 Bionic chip for lightning-fast performance
                </p>
                <p>
                    <a href="#" class="btn btn-default" role="button" >View more</a>
                </p>
            </div>





            <div class="col-lg-4">

                <img class="img-circle"  src="IMages/fashion3.jpg" alt="phone image" width="200px" height="200px"/>
                <h2>
                    Clothing
                </h2>
                <p> 
                    15 cm (6.1-inch) Super Retina XDR display
Cinematic mode adds shallow depth of field and shifts focus automatically in your videos
Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording
12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording
A15 Bionic chip for lightning-fast performance
                </p>
                <p>
                    <a href="#" class="btn btn-default" role="button" >View more</a>
                </p>
            </div>
        </div>

    </div>

            <!-- middel content end -->



            <!-- footer starts -->

            <hr/>


            <footer>


                <div class="container">
                    <p class="pull-right">
                        <a href="#">Back to top</a>
                        </p>
                    <p> 2023&copy; E-shopping <a href="DEfault_.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a>&middot;
                        
                    </p>
                </div>


            </footer>








            </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
                </script>

</body>
</html>
