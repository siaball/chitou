<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ page import="chitou.trista.model.*,java.util.*, java.sql.*, javax.servlet.* , javax.naming.*, java.sql.*, javax.sql.*"%> 
<%@ page import="java.util.List"%> 
<%
response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完成查詢</title>
</head>

<style>
table{
border:3px dashed black;
}
h2{
color: #2894FF;
}

</style>
<table>
<%

	FlightTicket i = (FlightTicket)request.getAttribute("searchflight");
%>
<tr>
	<td><%= i.getFlightID()  %>
	<td><%= i.getClassID()  %>
	<td><%= i.getDepartureTime()  %>
	<td><%= i.getArrivalTime()  %>
	<td><%= i.getFare() %>
	<td><%= i.getAirline()  %>
	<td><%= i.getOriginID()  %>
	<td><%= i.getDestinationID()  %>
</tr>	
</table>
<body>
<h2>查詢成功</h2>
</body>
</html>