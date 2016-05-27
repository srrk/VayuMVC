<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.zeroraj.www.dto.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  Success Page, After Login. -->
	<h5>Good Day !, Login Successfull.</h5>
	
	<!--  Receiving From Previous Session Object  -->
	<%-- User user = (User) session.getAttribute("user"); --%>
	
	<!--  Receiving the object from Dispatcher. -->
	<% User user = (User) request.getAttribute("user"); %>
	<h1>Debug</h1>
	<h1> Welcome Sri <%=user.getUserName() %></h1>
</body>
</html>