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
<script src="js/RGraph.common.core.js" ></script>
<script src="js/RGraph.radar.js" ></script>
<script src="js/RGraph.vprogress.js" ></script>
<title>Welcome</title>
		
	<style>
		canvas{
		}
	</style>
	</head>
	<body>
		<div id="navbar">
		<%@include file="header.jsp"%>
	</div>
	<div id="container">
		<table cellpadding="1px">
			<tr>
				<td valign="top"><%@include file="memberBox.jsp"%></td>
				<td rowspan="4" style="padding: 20px 25px;" valign="top">
					<div id="topMenu"
						style="border: 1px solid #aaaaaa; padding: 20px 20px; background: #dddddd; width: 98%; border-radius: 5px;">
						<b>About Me</b><br> welcome
						<%
							session.getAttribute("loggedIn");
						%>
						<br> I am a 29 year old man from Nepal. Currently I am living
						in United States in the city of Dallas. I am from a nobel brahmin
						family with values and culture. I am looking for a partner with
						whom I could live my life with.<br> <br> <b>About My
							Family</b><br> <br> My family lives in Nepal. I have two
						sisters and both of them are married now. The elder lives in
						kathmandu, whereas, the younger is in USA. I am from a nobel
						brahmin family with values and culture. I am looking for a partner
						with whom I could live my life with.
					</div> <br>
					<div id="bottomMenu1"
						style="float: left; border: 0px solid #aaaaaa; padding: 20px 20px;  width: 22%; border-radius: 5px;">
						<%
							session.getAttribute("loggedIn");
						%>
						<canvas id="progressBar" width="100" height="400">[No canvas support]</canvas>
						<b>Total  Friends</b><br>			
						<br>
					</div>
					<div id="bottomMenu2"
						style="float: left; margin-left: 5px; border: 0px solid #aaaaaa; padding: 20px 20px; width: 75%; border-radius: 5px;">
					 
 					<canvas id="radarGraph" width="500" height="400">[No canvas support]</canvas>
 					</div>				
				</td>
			</tr>
		</table>
		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>
	   		
</div>

	<script>
	
	window.onload = function ()
     {
         var radar = new RGraph.Radar('radarGraph', [4,3,8,4,6,7,5])
             .Set('labels', ${friends})
             .Draw();

         var vprogress = new RGraph.VProgress('progressBar', 50,100)
         .Set('tickmarks', 100)
         .Set('numticks', 20)
         .Set('gutter.right', 30)
         .Set('margin', 5)
         .Draw();

     }	
	
		</script>
</body>
</html>
