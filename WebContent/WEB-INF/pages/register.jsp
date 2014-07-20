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
<link rel="stylesheet" type="text/css" href="css/leftBox.css">

</head>
<body>
	<section class="credit-card signup gr-signup">
		<div class="logo">matrimony</div>
		<form:form method="post" action="index">

			<h2>Register</h2>
			<ul class="inputs">
				<li><form:label path="email">Email</form:label> <form:input
						path="email" name="card_number" class="full gr-input" required=""
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" /></li>
				<li><form:label path="password">Password</form:label> <form:input
						path="password" name="card_number" required=""
						class="full gr-input" type="password" /></li>
				<li class="expire last"><form:label path="firstName">First Name</form:label>
					<form:input path="firstName" required="" class="month gr-input" />
				</li>
				<li class="expire last"><form:label path="lastName">Last Name</form:label>
					<form:input path="lastName" required="" class="month gr-input" />
				</li>

				<table>
					<tr>
						<td width="50%">Male<form:radiobutton path="sex" value="M" /></td>
						<td width="50%">Female<form:radiobutton path="sex" value="F" /></td>
					</tr>
				</table>
				<!-- 
                DOB
                 -->
				<li class="expire last"><label>Date Of Birth</label> <select
					required name="month" class="full gr-input"
					onChange="changeDate(this.options[selectedIndex].value);">
						<option value="">Month</option>
						<option value="1">January</option>
						<option value="2">February</option>
						<option value="3">March</option>
						<option value="4">April</option>
						<option value="5">May</option>
						<option value="6">June</option>
						<option value="7">July</option>
						<option value="8">August</option>
						<option value="9">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
				</select> <select name="day" id="day" class="full gr-input" required>
						<option value="">Day</option>
				</select> <select name="year" id="year" class="full gr-input" required>
						<option value="">Year</option>
				</select></li>

				<li class="expire last"><input type="submit" value="submit"></li>
		</form:form>
		<script language="JavaScript" type="text/javascript">
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

		<div class="clearfix"></div>
		</ul>
		<div class="watermark">signup</div>
	</section>
</body>
</html>