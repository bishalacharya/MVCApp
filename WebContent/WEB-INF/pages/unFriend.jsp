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
<title>Unfriend Success</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<div id="container">
		<table cellpadding="1px">
			<tr>
				<td valign="top"><td><%@include file="memberBox.jsp"%></td></td>

				<td rowspan="4" style="padding: 15px;" valign="top">
					<div id="leftMenu"
						style="border: 1px solid #aaaaaa; padding: 10px 22px; background: #dddddd; width: 100%; height: 100px; border-radius: 5px;">
						Your friend connection has been removed !</div>
			</tr>
		</table>
		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>

		<!-- End of container -->

	</div>
</body>
</html>