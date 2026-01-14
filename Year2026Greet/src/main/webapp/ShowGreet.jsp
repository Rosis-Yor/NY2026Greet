<%@ page import="com.year.y2026.model.YearMonthMode" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/css_01.css">
<link rel="icon" type="image/x-icon" href="resources/Glocken.ico">
<title>Greet</title>

</head>
<body>
<h2 style="color:red";> HAPPY NEW 2026!  </h2>
<div>
<img src="resources/BubaBanner.gif" alt="BubaBanner" style="width:1100px;height: auto;"">
</div>

<div class="greetNY">
<p>

<%
		YearMonthMode ymm = (YearMonthMode)session.getAttribute("yearmonthmode");
		String month = ymm.getMonth() ;	
		String mode = ymm.getMode() ;
		String monthmode = ymm.getMonthMode();
%>
		
		
	<label for="month" class="month"  ><b>Month</b></label>: <%= month %>
	<label for="mode" class="mode" ><b>Mode</b></label>: <%= mode %></p>
	<div class="monthmode"><p><%= monthmode %></p></div>
</div>

</body>
</html>
