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
<title>Messages</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<!-- End of navbar -->
	<div id="container">

		<table cellpadding="1px">
			
			<tr>
				<td valign="top"><%@include file="emailBox.jsp"%></td>
				<td rowspan="4" style="padding: 20px 25px;" valign="top">
					<div id="topMenu"
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 100%; border-radius: 5px;">
						<b></b>
						From : <a href="/MVCApp/memberProfile?id=${message.senderId} " target="_blank">${message.senderName} </a><br>
						Date : ${message.date} <br>
						<br>
						<b>Subject : ${message.subject}</b><br>
						<b><br>Message :</b><br><br>${message.message} 
					 <br>
					 <br><b>Reply Back : </b> <br><br>
						<form:form method="post" action="readMessage" name="submitForm">
						<form:textarea path="message" rows="8" cols="50" />
						<form:hidden path="senderId" value="${message.senderId}" />
						<form:hidden path="id" value="${message.id}" />
						<form:hidden path="subject" value="${message.subject}" />
						<br><b><a href="javascript:document.submitForm.submit()">Send Message</a></b>
						<br>
						</form:form>
					</div>

				</td>
			</tr>
			
		</table>
		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>