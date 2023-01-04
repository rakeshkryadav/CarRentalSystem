<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	try{
		String url = "jdbc:mysql://localhost:3306/car_rental";
		String uname = "root";
		String passwd = "root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uname, passwd);
		
		String pickUpLoc = request.getParameter("pickup");
		String returnLoc = request.getParameter("return");
		String pickUpDate = request.getParameter("pickupdate");
		String returnDate = request.getParameter("returndate");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phone");
		String carName = request.getParameter("car_name");
		
		if(phoneNo != null){
		
			PreparedStatement statement = conn.prepareStatement("insert into booking(pickup_loc, return_loc, pickup_date, return_date, name, email, phone_no, car) values(?, ?, ?, ?, ?, ?, ?, ?)");
		
			statement.setString(1, pickUpLoc);
			statement.setString(2, returnLoc);
			statement.setString(3, pickUpDate);
			statement.setString(4, returnDate);
			statement.setString(5, name);
			statement.setString(6, email);
			statement.setLong(7, Long.parseLong(phoneNo));
			statement.setString(8, carName);
			
			int flag = statement.executeUpdate();
			if(flag > 0){
				response.sendRedirect("booked.jsp");
			}
			else{
				out.println("<br>booking failed<br>");
			}
		}
	}
	catch(SQLException e){
		out.println(e);
	}
		
%>