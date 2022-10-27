<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Car Rental Website</title>
    <link rel="stylesheet" href="assets\css\login.css">
  </head>
  <body>
    <div class="center">
      <h1>SignUp</h1>
      <form method="post">
        <div class="txt_field">
            <input type="text" name = "name" oninput="this.value = this.value.replace(/[^A-z ]/g, '').replace(/(\..*)\./g, '$1');" required>
            <span></span>
            <label>Full Name</label>
          </div>
        <div class="txt_field">
          <input type="email" name = "email" required>
          <span></span>
          <label>Email ID</label>
        </div>
        <div class="txt_field">
          <input type="password" name = "password" required>
          <span></span>
          <label>Password</label>
        </div>
        <div class="txt_field">
            <input type="password" required>
            <span></span>
            <label>Confirm Password</label>
          </div>
          <div class="txt_field">
            <input type="text" name = "address" required>
            <span></span>
            <label>Address</label>
          </div>
          <div class="txt_field">
            <input type="text" name = "pincode" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" required>
            <span></span>
            <label>Pincode</label>
          </div>
        
        <input type="submit" value="Signup">
        <div class="signup_link">
          Already member? <a href="login.jsp">Login</a>
        </div>
      </form>
    </div>

<%
	try{
		String url = "jdbc:mysql://localhost:3306/car_rental";
		String uname = "root";
		String passwd = "root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uname, passwd);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		
		if(password != null){
		
			PreparedStatement statement = conn.prepareStatement("insert into login values(?, ?, ?, ?, ?)");
			statement.setString(1, name);
			statement.setString(2, email);
			statement.setString(3, password);
			statement.setString(4, address);
			statement.setInt(5, Integer.parseInt(pincode));
			
			int flag = statement.executeUpdate();
			if(flag > 0){
				out.println("data inserted successfully");
				response.sendRedirect("login.jsp");
			}
			else{
				out.println("operation failed");
			}
		}
	}
	catch(SQLException e){
		out.println(e);
	}
%>

  </body>
</html>
