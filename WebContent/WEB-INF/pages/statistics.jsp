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
<title>Welcome</title>

</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<div id="container">
		<table cellpadding="1px">
			<tr>
				<td valign="top"><%@include file="memberBox.jsp"%></td>
				<td rowspan="4" style="padding: 20px 25px;" valign="top">
					<div id="topMenu"
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 98%; border-radius: 5px;">
						<b>About Me</b><br> welcome
						<%
							session.getAttribute("loggedIn");
						%>
					</div> <br>
					<div id="bottomMenu1"
						style="float: left; border: 0px solid #aaaaaa; padding: 20px 20px; width: 22%; border-radius: 5px;">
						<%
							session.getAttribute("loggedIn");
						%>
						<canvas id="progressBar" width="100" height="400">[No
						canvas support]</canvas>
						<br> <br>
					</div>
					<div id="bottomMenu2"
						style="float: left; margin-left: 5px; border: 0px solid #aaaaaa; padding: 20px 20px; width: 75%; border-radius: 5px;">

						<canvas id="radarGraph" width="500" height="400">[No
						canvas support]</canvas>
					</div>
				</td>
			</tr>
		</table>
		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>

	</div>

	<script>
		
	</script>
</body>
</html>
