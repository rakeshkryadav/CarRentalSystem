<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<title>Insert title here</title>
</head>
<body>
<% 
		String url = "jdbc:mysql://localhost:3306/car_rental";
		String uname = "root";
		String passwd = "root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uname, passwd);
		
		String id = request.getParameter("bookingID");
		PreparedStatement statement = conn.prepareStatement("select * from booking where id = ?");
		statement.setString(1, id);
		
		ResultSet result = statement.executeQuery();
		result.next();
		out.println("booking_ID_" + result.getString(10));
		
%>


        <form action = "update.jsp" method="post">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
            <button type="button" class="close" data-dismiss="modal" onclick = "location.href = 'account.jsp'" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              
                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                     
                        <input type="text" class="form-control" placeholder="Pick-up location" value ="<%= result.getString(1) %>" name="pickup" required>
                     
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Return location" value ="<%= result.getString(2) %>" name="return" required>
                     
                    </div>
                   </div>
                  </div>

                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="date" class="form-control" placeholder="Pick-up date" value ="<%= result.getString(3) %>" name="pickupdate" required>
                      
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                     
                        <input type="date" class="form-control" placeholder="Return date" value ="<%= result.getString(4) %>" name="returndate" required>
                     
                    </div>
                   </div>
                  </div>

                  <div class="form-group">
                    
                      <input type="text" class="form-control" placeholder="Enter full name" name="name" value ="<%= result.getString(5) %>" oninput="this.value = this.value.replace(/[^A-z ]/g, '').replace(/(\..*)\./g, '$1');" required>
                    
                  </div>

                  <div class="row">
                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Enter email address" value ="<%= result.getString(6) %>" name="email" required>
                      
                    </div>
                   </div>

                   <div class="col-md-6">
                    <div class="form-group">
                      
                        <input type="text" class="form-control" placeholder="Enter phone" value ="<%= result.getString(7) %>" name="phone" id = "myText" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" required>
                      
                    </div>
                   </div>
                  </div>
                  
              
          </div>
          <div class="modal-footer">
          	<div>
        	  	 <input type="hidden" class="form-control" value ="<%= result.getString(8) %>" name="car_name" id="car_name">
        	  	 <input type="hidden" class="form-control" value ="<%= result.getString(10) %>" name="id" id="booking_id">
          	</div>
            <input type = "submit" class="btn btn-primary" value = "Update"/>
          </div>
        </form>

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