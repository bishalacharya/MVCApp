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
<title>Member Profile</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<!-- End of navbar -->
	<div id="container">
		<table cellpadding="1px">
			<tr>
				<td valign="top"><%@include file="memberBox1.jsp"%></td>
				<td rowspan="4" style="padding: 20px 25px;" valign="top">
					<div id="leftMenu"
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 98%; border-radius: 5px;">
						<b>About Me</b><br>
						<br> I am a 29 year old man from Nepal. Currently I am living
						in United States in the city of Dallas. I am from a nobel brahmin
						family with values and culture. I am looking for a partner with
						whom I could live my life with.<br>
						<br> <b>About My Family</b><br> <br> My family
						lives in Nepal. I have two sisters and both of them are married
						now. The elder lives in kathmandu, whereas, the younger is in USA.
						I am from a nobel brahmin family with values and culture. I am
						looking for a partner with whom I could live my life with.
					</div> <br>
				<table style="width: 70%">
						<tr>
							<td><strong>Partner Preference</strong></td>
							<br>
						</tr>
						<tr>
							<td>Gender : F</td>
							<td>Location : <b>USA</b></td>
							<td>Age : 20 - 30</td>
						</tr>
						<tr>
							<td>Occupation :</td>
							<td>Income :</td>
							<td>Religion :</td>
						</tr>
						<tr>
							<td>Height :</td>
							<td>Complexion :</td>
							<td>Language :</td>
						</tr>
						<tr>
							<td>Food Habits : Veg</td>
							<td>Smoke : No</td>
							<td>Alcohol : social drinker</td>
						</tr>
					</table>
	
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