<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Wedding Form</title>
<meta name="robots" content="noindex, nofollow">
<link rel="canonical"
	href="http://s.cssdeck.com/labs/css3-credit-card-form">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<section class="credit-card signup gr-signup">
		<div class="logo"></div>
		<h2>${profile.firstName}${profile.lastName}</h2>
		<br>
		<table>
			<tr>
				<td valign="top"><br>Gender : ${profile.sex}<br>
				<br> Age : ${profile.age}<br>
				<br>Country : ${profile.country}<br>
				<br> Religion : ${profile.religion}<br>
				<br>Language : ${profile.language}<br>
				<br></td>
				<td valign="top"><img
					src="http://localhost:8080/MVCApp/images/filename1.jpg" alt="image"
					style="margin: 0px;"></td>
			</tr>
		</table>
		<div class="watermark">profile</div>
		<br>
	</section>
	<div
		style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #37B2F0; width: 100%; border-radius: 5px;">
		<table>
			<tr>
				<td><a href="/MVCApp/myMatches">My Matches</a></td>
			</tr>
			<tr>
				<td><a href="/MVCApp/messages">My Messages</a></td>
			</tr>
			<tr>
				<td><a href="/MVCApp/statistics">My Statistics</a></td>
			</tr>
			<tr>
				<td><a href="/MVCApp/editProfile">Edit Profile</a></td>
			</tr>
		</table>
	</div>
</body>
<script>
	$(document).ready(function() {
		$("#connect").on("click", function(e) {
			e.preventDefault();
			var url = $(this).attr('href');

			id1 = $
			{
				profile.id
			}
			;

			$.ajax({
				type : "POST",
				url : url,
				data : "id1=" + id1,
				success : function(data) {

				}
			});
		});
	});
</script>
</html>