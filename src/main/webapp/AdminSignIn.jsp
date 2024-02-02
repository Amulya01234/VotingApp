<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin SignIn</title>
<style>
	.nav{
		background-color: black;
		color: white;
		display: block;
		width: 100%;
	}
	.nav ul{
		list-style: none;
		display: inline-flex;
		font-size: 30px;
	}
	.nav ul li{
		padding: 20px;
	}
	li:hover{
		background-color: green;
	}
	.a{
		width: 100%;
		height: 450px;
		border: solid green;
	}
	a{
		text-decoration: none;
		color: white;
	}
	#h1,h2{
		color: red;
	}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="Registration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignIn.jsp">Voter Login</a></li>
			<li><a href="AdminSignIn.jsp">Admin Login</a></li>
			<li>About</li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center>
			<h1>Admin SignIn</h1>
			<form  action="adminLogin">
				Email Id <input type="email" placeholder="Enter your Emailid" name="email">
				<br><br>
				Password <input type="password" placeholder="Enter your password" name="password">
				<br><br>
				<input type="submit" value="Sign In">
			</form>
			<hr>
			<%
				String msg=(String)request.getAttribute("LoginStatus");
				if(msg!=null)
				{
			%>
				<h2 style="color:red;"><%=msg%></h2>
			<%
				}
			%>
		</center>
	</div>
</body>
</html>