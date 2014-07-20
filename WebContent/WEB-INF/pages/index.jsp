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
<title>Connect Us</title>
</head>
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>

	<!-- End of navbar -->
	<div id="container">
	<table >
		<tr>
			<td><%@include file="register.jsp"%></td>
			
			<td>
			<img src="/MVCApp/images/${random.nextInt(4)+1}.jpg" >
			
			</td>
		</tr>
	</table>
		<div id="footer">
		<%@include file="footer.jsp"%>
		</div>
		
	<!-- End of container -->
	
	</div>
</body>

<script>
	$("select").change(function() {
		var str = "";
		$("select option:selected").each(function() {
			str += $(this).text() + " ";
		});
		$("div.divTest").text(str);
	}).change();
	
	function changeDate(i) {
		var e = document.getElementById('day');
		while (e.length > 0)
			e.remove(e.length - 1);
		var j = -1;
		if (i == "na")
			k = 0;
		else if (i == 2)
			k = 28;
		else if (i == 4 || i == 6 || i == 9 || i == 11)
			k = 30;
		else
			k = 31;
		while (j++ < k) {
			var s = document.createElement('option');
			var e = document.getElementById('day');
			if (j == 0) {
				s.text = "Day";
				s.value = "na";
				try {
					e.add(s, null);
				} catch (ex) {
					e.add(s);
				}
			} else {
				s.text = j;
				s.value = j;
				try {
					e.add(s, null);
				} catch (ex) {
					e.add(s);
				}
			}
		}
	}
	y = 2010;
	while (y-->1909) {
		var s = document.createElement('option');
		var e = document.getElementById('year');
		s.text = y;
		s.value = y;
		try {
			e.add(s, null);
		} catch (ex) {
			e.add(s);
		}
	}
</script>
</html>