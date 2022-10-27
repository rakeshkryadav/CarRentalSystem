<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets\css\login.css">
<title>Car Rental Website</title>
</head>
<body>
	<div class = "center" style = "width: 60%;">
	<h1>Booking Successful</h1>
	<div style = "padding: 40px; color: rgb(70, 70, 70);">
		
		<div style = "float: left">
		Name <br>
		E-Mail <br>
		Phone No <br><br>
		Car No <br>
		Date of Booking <br>
		Location <br>
		Duration <br>
		</div>
		
		<div style = "color: black; font-weight: bold; transform: translate(10%)">
<%
	try{
		String url = "jdbc:mysql://localhost:3306/car_rental";
		String uname = "root";
		String passwd = "root";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uname, passwd);
	
		PreparedStatement statement = conn.prepareStatement("select * from booking order by id  desc limit 1");
		
		ResultSet result = statement.executeQuery();
		result.next();
		
		out.println("<em>" + result.getString(5) +
		"<br>" + result.getString(6) +
		"<br>" + result.getString(7) +
		"<br><br>To be notified" +
		"<br>" + result.getString(8) +
		"<br>" + result.getString(1) +
		"<br>" + result.getString(3) + " to " + result.getString(4) +
		"<br><br></em>");
	}
	catch(SQLException e){
		out.println("Unexpected Error");
	}
%>
		</div>
		
		<form>
		<br>
		<table style = "width: 100%; table-layout: fixed;">
			<tr>
				<style>
					#cancelButton{
						width: 100%;
						height: 50px;
						border: 1px solid;
						background: #f94545;
						border-radius: 25px;
						font-size: 18px;
						color: #e9f4fb;
						font-weight: 700;
						cursor: pointer;
						outline: none;
					}
					
					#cancelButton:hover{
						border-color: #b23737;
						transition: .5s;
					}
					
					#messageBox{
						width: 400px;
						height: 100px;
						background: white;
						color: #f94545;
						padding: 20px;
						margin-left: auto;
						margin-right: auto;
						text-align: center;
						border: 1px solid #aaaaaa;
						display: none;
					}
					#content{
						float: left;
						padding: 2px;
						border-radius: 50%;
						background: #f94545;
					}
					#inside{
						float: left;
						width: 45px;
						height: 45px;
						border-radius: 50%;
						background: white;
						text-align: center;
						font-size: 32px;
					}
				</style>
				<td><button type = "button" id = "cancelButton" onclick = "dialogBox()">Cancel Booking</button></td>
				<td><input type = "submit" value = "Home" formaction = "index.jsp"/></td>

			</tr>
		</table>
		</form>
	</div>
	</div>
	
	<div class ="center" id = "messageBox">
			<div id = "content">
				<div id = "inside">!</div>
				</div>
			&nbsp; Your booking has been canceled.
			<button type = "button" id = "cancelButton" style = "width: 150px;float: right" onclick = "location.href = 'index.jsp';">Continue</button>
	</div>
	<script>
		function dialogBox(){
			document.getElementById("messageBox").style.display = "block";
		}
	</script>
</body>
</html>