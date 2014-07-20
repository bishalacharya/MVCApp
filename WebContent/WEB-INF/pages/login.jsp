<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:useBean id="random" class="java.util.Random" scope="application" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<title>Login</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>

	<!-- End of navbar -->
	<div id="container" align="center">

		<form:form method="post" action="login">
			<div id="cssBox"
						style="border: 1px solid #aaaaaa; padding: 10px 22px; background: #dddddd; width: 50%; height: 200px; border-radius: 5px;">
						
			
			<table align="center">
			<tr><td>Login</td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" required=""
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" /></td>
			</tr><tr><td>	
				<form:label path="password">Password</form:label></td>
				<td><form:input path="password" required="" type="password" /></td>
			</tr><tr>	<td>
				<input type="submit" value="submit"></td><td></td>
				</tr>
				<tr>
			<td><a href="/MVCApp/index">signup</a> |</td> <td><a href="/MVCApp/resetPassword">Forgot password</a> </td></tr>
			</table>
			 </div>
		</form:form>

		${message}
		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>

		<!-- End of container -->

	</div>
</body>

<script>

</script>
</html>