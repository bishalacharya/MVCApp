<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="random" class="java.util.Random" scope="application" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/leftBox.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<title>Send Message</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>

	<!-- End of navbar -->
	<div id="container">
	<table >
		<tr>
			<td><%@include file="memberBox.jsp"%></td>
			
			<td valign="top" style="padding: 20px 25px;">
					<form:form method="post" action="sendMessage">
			<div id="cssBox" 
						style="border: 1px solid #aaaaaa; padding: 20px 32px; background: #dddddd; width: 100%; height: 300px; border-radius: 5px;">
						
			<table align="center">
			<tr><td>Compose Message</td>
			</tr>
			<tr>
				<td><b>Subject</b></td>
				<td><form:input path="subject" required="" /></td>
			</tr><tr><td>	
				<b>Message</b></td>
				<td><form:textarea path="message" rows="8" cols="50" /></td>
			</tr><tr>	<td>
				<input type="submit" value="submit"></td><td></td>
				</tr>
				<tr>
			</tr>
			</table>
			 </div>
		</form:form>
			
						 </div>
			</td>
		</tr>
		
	</table>
		<div id="footer">
		<%@include file="footer.jsp"%>
		</div>
		
	<!-- End of container -->
	
	</div>
</body>
</html>