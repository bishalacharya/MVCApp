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
<body onload="disableElements();">
	<section class="credit-card signup gr-signup">
		<div class="logo"></div>
		<h2>${profile.firstName} ${profile.lastName}</h2>
		<br>
		<table>
			<tr>
				<td valign="top"><br>Gender : ${profile.sex}<br><br>
				Age : ${profile.age}<br><br>Country : ${profile.country}<br><br>
					Religion : ${profile.religion}<br><br>Language : ${profile.language}<br><br>
					
				</td>
				<td valign="top"><img
					src="http://localhost:8080/MVCApp/images/filename1.jpg"
					alt="image" style="margin: 0px;"></td>
			</tr>
		</table>
		<div class="watermark">profile</div>
		<br>
	</section>
	
	<div
		style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #37B2F0; width: 100%; border-radius: 5px;">
	<table>
			<tr>
				<td>Like this Profile</td>
				<td><img src="http://localhost:8080/MVCApp/images/star.png"
					alt="image" height="15px" width="15px"></td>
			</tr>
			<tr>
				<td> 
				<a id="connect" href="/MVCApp/sendConnectRequest?id=${profile.userId}"> Send Connect Request</a></td>
				<td><img src="http://localhost:8080/MVCApp/images/connect.png"
					alt="image" height="15px" width="15px"></td>
			</tr>
			
			<tr>
			<td><a id="unfriend" href="/MVCApp/unFriend?id=${profile.userId}">Unfriend</a></td>
			</tr>
			
			<tr>
			<td><a href="/MVCApp/sendMessage?id=${profile.userId}">Send Message</a></td>
			<td><img src="http://localhost:8080/MVCApp/images/sendMessage.png"
					alt="image" height="15px" width="15px"></td>
			</tr>
			
	</table>
	</div>
	<script>

		function disableElements() {
			document.getElementById("unfriend").style.visibility = "hidden";
			var connAllreadyExists = ${sendConnRequest};
			if(connAllreadyExists){
			document.getElementById("connect").style.visibility = "hidden";
			document.getElementById("unfriend").style.visibility = "visible";
			}
		}
	</script>	
</body>
</html>