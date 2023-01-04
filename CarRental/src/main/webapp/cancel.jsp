<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
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
  
  
  <form>
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Cancel Booking</h5>
            <button type="button" class="close" data-dismiss="modal" onclick = "location.href = 'account.jsp'" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              
                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                     
                        <input type="text" class="form-control" placeholder="Enter booking ID" name="bookingID" required>
                     
                    </div>
                   </div>
                  </div>
                  
          </div>
          <div class="modal-footer">
            <input type = "button" class="btn btn-primary" onclick = "location.href = 'account.jsp'" value = "back"/>
            <input style = "background-color : red" type = "submit" class="btn btn-primary" value = "Cancel"/>
          </div>
        </form>
  
 <%
 	String url = "jdbc:mysql://localhost:3306/car_rental";
	String uname = "root";
	String passwd = "root";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uname, passwd);
	
	String id = request.getParameter("bookingID");
	PreparedStatement statement = conn.prepareStatement("update booking set status = \"cancelled\" where id = ?");
	statement.setString(1, id);
	
	int flag = statement.executeUpdate();
	if(flag > 0){
		response.sendRedirect("account.jsp");
	}
 
 %>
  
  
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