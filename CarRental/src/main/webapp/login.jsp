<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Car Rental Website</title>
    <link rel="stylesheet" href="assets\css\login.css">
  </head>
  <body>
    <div class="center">
      <h1>Login</h1>
      
      <form method="post">
        <div class="txt_field">
          <input type="text" name = "email" required>
          <span></span>
          <label>Email ID</label>
        </div>
        <div class="txt_field">
          <input type="password" name = "password" required>
          <span></span>
          <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Login">
        <p style = "color: red;">
<%
	try{
		String url = "jdbc:mysql://localhost:3306/car_rental";
		String uname = "root";
		String passwd = "root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uname, passwd);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(password != null){
		
			PreparedStatement statement = conn.prepareStatement("select email, password, fullname from login where email = ?");
			statement.setString(1, email);
			
			ResultSet result = statement.executeQuery();
			result.next();
			
			if(password.equals(result.getString(2))){
				out.println("<br>welcome user");
				session.setAttribute("AccEmail", result.getString(1));
				session.setAttribute("AccName", result.getString(3));
				response.sendRedirect("index.jsp");
			}
			else{
				out.println("worng username/password");
			}
		}
	}
	catch(SQLException e){
		out.println("worng username/password");
	}
%>
		</p>
        <div class="signup_link">
          Not a member? <a href="signup.jsp">Signup</a><br>
        </div>
      </form>
    </div>

  </body>
</html>
