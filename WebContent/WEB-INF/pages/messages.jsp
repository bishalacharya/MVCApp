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
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 98%; border-radius: 5px;">
						<b></b>
						<%
							session.getAttribute("loggedIn");
						%>
						<br><b>Total incoming messages :</b> <br> <br> <b>Total outgoing messages :</b><br> My family lives in Nepal. I have two
						sisters and both of them are married now. The elder lives in
						kathmandu, whereas, the younger is in USA. I am from a nobel
						brahmin family with values and culture. I am looking for a partner
						with whom I could live my life with.
					</div> <br>
					<div id="bottomMenu1"
						style="float: left; border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 48%; border-radius: 5px;">
						<b>Inbox ( ${inboxCount} )</b>
						<img src="http://localhost:8080/MVCApp/images/inbox.png" height="20px" width="20px"><br><br> 
						<%
							session.getAttribute("loggedIn");
						%>
						 
						<c:forEach var="listVar" items="${inbox}" varStatus="theCount">
							
								${theCount.count} :	<a href="/MVCApp/readMessage?id=${listVar.id}" style="color:#2E9AFE">${listVar.subject} </a>
								<br>
						</c:forEach> 
						
					</div>
					<div id="bottomMenu2"
						style="float: left; margin-left: 5px; border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 49%; border-radius: 5px;">
						<b>Outbox ( ${outboxCount} )</b><img src="http://localhost:8080/MVCApp/images/outbox.png" height="20px" width="20px"><br><br>
						<c:forEach var="listVar" items="${outbox}" varStatus="theCount1">
							
								${theCount1.count} : <a href="/MVCApp/readMessage?id=${listVar.id}" style="color:#2E9AFE">	${listVar.subject} </a>
								<br> 
						</c:forEach> 
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