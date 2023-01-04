<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Car Rental Website</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <div class="sub-header">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-xs-12">
            <ul class="left-info">
              <li><a href="#"><i class="fa fa-envelope"></i>rentcar@company.com</a></li>
              <li><a href="#"><i class="fa fa-phone"></i>123-456-7890</a></li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="right-icons">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.jsp"><h2>Car Rent<em>.com</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="fleet.jsp">Book Now</a>
              </li>
              <li class="nav-item dropdown">
                <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>
              
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="about.jsp">About Us</a>
                    <a class="dropdown-item" href="team.jsp">Team</a>
                    <a class="dropdown-item" href="faq.jsp">FAQ</a>
                    <a class="dropdown-item" href="terms.jsp">Terms</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
              <li class="nav-item">
<%
	if(session.getAttribute("AccName") != null){
		out.println("<a class=\"nav-link\" href=\"account.jsp\">" + session.getAttribute("AccName") + "</a>");
	}
	else{
		out.println("<a class=\"nav-link\" href=\"login.jsp\">Sign Up/Log In</a>");
	}
%>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <div class="page-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1>Book Now</h1>
            <span>exclusive offer for you</span>
          </div>
        </div>
      </div>
    </div>

    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-1-720x480.webp" alt="">
              <div class="down-content">
                <h4>Maruti Suzuki Wagon R</h4>
                <div style="margin-bottom:10px;">
                  <span>1500/Day<sub>&nbsp;<s>3000/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                  Not applicable on bookings where fuel is included<br>
                  Applicable on Rental bookings only</p>
                <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Maruti Suzuki Wagon R'">Book Now</a>
              </div>
            </div>

            <br>
          </div>
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-2-720x480.webp" alt="">
              <div class="down-content">
                <h4>Toyota RAV4 Prime</h4>
                <div style="margin-bottom:10px;">
                  <span>1900/Day<sub>&nbsp;<s>4800/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                  Not applicable on bookings where fuel is included<br>
                  Applicable on Rental bookings only</p>
                <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Toyota RAV4 Prime'">Book Now</a>
              </div>
            </div>

            <br>
          </div>
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-3-720x480.jpg.webp" alt="">
              <div class="down-content">
                <h4>Toyota RAV4 Prime</h4>
                <div style="margin-bottom:10px;">
                  <span>2500/Day<sub>&nbsp;<s>6000/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                  Not applicable on bookings where fuel is included<br>
                  Applicable on Rental bookings only</p>
                <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Toyota RAV4 Prime'">Book Now</a>
              </div>
            </div>

            <br>
          </div>

          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-4-720x480.jpg" alt="">
              <div class="down-content">
                <h4>Volkswagen Passat</h4>
                <div style="margin-bottom:10px;">
                  <span>2100/Day<sub>&nbsp;<s>5000/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                  Not applicable on bookings where fuel is included<br>
                  Applicable on Rental bookings only</p>
              <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Volkswagen Passat'">Book Now</a>
              </div>
            </div>

            <br>
          </div>

          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-5-720x480.jpg" alt="">
              <div class="down-content">
                <h4>Volkswagen Golf</h4>
                <div style="margin-bottom:10px;">
                  <span>1500/Day<sub>&nbsp;<s>3400/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                    Not applicable on bookings where fuel is included<br>
                    Applicable on Rental bookings only</p>
                <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Volkswagen Golf'">Book Now</a>
              </div>
            </div>

            <br>
          </div>

          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/offer-6-720x480.jpg" alt="">
              <div class="down-content">
                <h4>Ford Mustang</h4>
                <div style="margin-bottom:10px;">
                  <span>3000/Day<sub>&nbsp;<s>8000/day</s></sub></span>
                </div>
                <p>Applicable on bookings with minimum duration of 3 days<br>
                  Not applicable on bookings where fuel is included<br>
                  Applicable on Rental bookings only</p>
                <a href="#" data-toggle="modal" data-target="#exampleModal" class="filled-button" onclick = "document.getElementById('car_name').value = 'Ford Mustang'">Book Now</a>
              </div>
            </div>

            <br>
          </div>
        </div>

        <br>
        <br>

        <nav>
          <ul class="pagination pagination-lg justify-content-center">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">«</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">»</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </nav>

        <br>
        <br>
        <br>
        <br>
      </div>
    </div>

    <!-- Footer Starts Here -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-3 footer-item">
            <h4>CarRent.com</h4>
            <p>With flexible rental options and a wide network that's visible across most cities in India, renting from carRent.com has become the preferred choice for most Delhi NCR locals.</p>
            <ul class="social-icons">
              <li><a rel="nofollow" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item">
            <h4>Made By</h4>
            <ul class="menu-list">
              <li><a href="team.jsp">Vivek Singh Adhikari</a></li>
              <li><a href="team.jsp">Piyush Upadhyay</a></li>
              <li><a href="team.jsp">Rakesh Kumar Yadav</a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item">
            <h4>Additional Pages</h4>
            <ul class="menu-list">
              <li><a href="about.jsp">About Us</a></li>
              <li><a href="faq.jsp">FAQ</a></li>
              <li><a href="contact.jsp">Contact Us</a></li>
              <li><a href="terms.jsp">Terms</a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item last-item">
            <h4>Contact Us</h4>
            <div class="contact-form">
              <form id="contact footer-contact" action="" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="name" type="text" class="form-control" id="name" placeholder="Full Name" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="email" type="text" class="form-control" id="email" pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your Message" required=""></textarea>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="filled-button">Send Message</button>
                    </fieldset>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
    <div class="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p>
                Copyright © 2022<br> Vivek Singh Adhikari / Piyush Upadhyay / Rakesh Kumar Yadav
            </p>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 70px;">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
        <form action = "insert.jsp" method="post">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Book Now</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              
                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                     
                        <input type="text" class="form-control" placeholder="Pick-up location" name="pickup" required>
                     
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Return location" name="return" required>
                     
                    </div>
                   </div>
                  </div>

                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="date" class="form-control" placeholder="Pick-up date" name="pickupdate" required>
                      
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                     
                        <input type="date" class="form-control" placeholder="Return date" name="returndate" required>
                     
                    </div>
                   </div>
                  </div>

                  <div class="form-group">
                    
                      <input type="text" class="form-control" placeholder="Enter full name" name="name" oninput="this.value = this.value.replace(/[^A-z ]/g, '').replace(/(\..*)\./g, '$1');" required>
                    
                  </div>

                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Enter email address" name="email" required>
                      
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Enter phone" name="phone" id = "myText" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" required>
                      
                    </div>
                   </div>
                  </div>
                  
              
          </div>
          <div class="modal-footer">
          	<div>
        	  	 <input type="hidden" class="form-control" name="car_name" id="car_name">
          	</div>
            <button type="button" class="btn btn-secondary" data-dismiss="modal" >Cancel</button>
            <input type = "submit" class="btn btn-primary" value = "Book Now"/>
          </div>
        </form>
        </div>
      </div>
    </div>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

  </body>
</html>