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
	<%-- User user = (User) request.getAttribute("user"); --%>
        
        <!-- Receiving the Object through JSTL (Tag Library) -->
        <jsp:useBean id="user" class="com.zeroraj.www.dto.FormUser" scope="request">
            <!-- Pushing all input parameters to pojo object members. -->
            <jsp:setProperty name="user" property="*"></jsp:setProperty>
        </jsp:useBean>
	
	<!-- <h1> Welcome Sri <%--=user.getUserName() --%></h1> -->
        
        <!-- Printing the Object attribute using JSTL (Tag Library) -->
        Hello <jsp:getProperty name="user" property="username"></jsp:getProperty>
        Your Pincode <jsp:getProperty name="user" property="pincode"></jsp:getProperty>
        
</body>
</html>