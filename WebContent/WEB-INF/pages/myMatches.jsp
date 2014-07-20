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
<title>My Matches</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<!-- End of navbar -->
	<div id="container">
		<table cellpadding="1px">
			<tr>
				<td valign="top"><%@include file="memberBox.jsp"%></td>

				<td rowspan="4" valign="top"
					style="padding-top: 10px; padding-bottom: 10px;">
					<table cellspacing="5px">
						<tr>
							<c:forEach var="listVar" items="${regList}" varStatus="theCount">
								<td><a href="/MVCApp/memberProfile?id=${listVar.userId}"
									target="_blank"> <img
										src="http://localhost:8080/MVCApp/images/filename2.jpg"
										alt="description here"
										style="margin: 5px; display: inline-block;"></a> <br>
									<p align="center">
										<c:out value="${listVar.firstName}" />
										(
										<c:out value="${listVar.age}" />
										)
									</p></td>
								<c:if test="${theCount.count %3 == 0 }">
						</tr>
						<tr>
							</c:if>
							</c:forEach>
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