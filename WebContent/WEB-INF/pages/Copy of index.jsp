<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<title>Connect Us</title>
</head>
<body>
	<div id="navbar">
		<ul>
			<li>Home</li>
			<li>Countries</li>
			<li>green</li>
			<li>Connection</li>
			<li>signup</li>
		</ul>
	</div>
	<!-- End of navbar -->
	<div id="container">

		<div id="p1">
			<h3>Choose your Country</h3>
			<p>
				<jsp:include page="countries.jsp" />
			</p>
		</div>
		<%@include file="register.jsp" %>
		<form:form method="POST" action="/MVCApp/index">
			<table>
				<tr>
					<td><form:label path="name">Name</form:label></td>
					
				</tr>
				<tr>
				<td><form:select path="name">
					  <form:option value="NONE" label="--- Select ---" />
					  <form:options items="${countryList}" />
				       </form:select>
                                </td>
					<td colspan="2"><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
		<div class="box1">
			<h2>Alabama</h2>

		</div>
		<div class="divTest">check</div>
	</div>
	<!-- End of container -->

</body>

<script>
	$("select").change(function() {
		var str = "";
		$("select option:selected").each(function() {
			str += $(this).text() + " ";
		});
		$("div.divTest").text(str);
	}).change();
</script>
</html>