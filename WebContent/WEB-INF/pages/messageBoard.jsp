<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Chat Joined</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/leftBox.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<!-- changing scope will change the behavior of the app -->
<body>
	<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<div id="container">
		<table>
			<tr>
				<td valign="top"><%@include file="messageBox.jsp"%></td>
				<td rowspan="4" style="padding: 20px 25px;" valign="top">
					<div id="leftMenu"
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 600px; border-radius: 5px;">
					<div style="overflow:scroll;height:400px">
						<c:if test="${pageContext.request.method=='POST'}">

							<c:choose>
								<c:when test="${param.send!=null}">
								<c:set var="chat"
										value="${chat}<b>${param.uid}Anonymous says:</b>${param.text}<br /><br />"
										scope="application" /> 
								</c:when>

								<c:when test="${param.clear!=null}">
									<c:set var="chat" value="" scope="application" />
								</c:when>
							</c:choose>
						</c:if>

						<table border="0">
							<tbody>
								<tr>
									<td>
										<b>
											Public Messages (name hidden for privacy)
											<c:out value="${param.uid}" />
										</b>

										<hr />
									</td>
								</tr>

								<tr>
									<td><c:out value="${chat}" escapeXml="false" /></td>
								</tr>

								<tr>
									<td>
										<hr />

										
									</td>
								</tr>
							</tbody>
						</table>
					</div>
						

					</div>

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

</script>
</html>

