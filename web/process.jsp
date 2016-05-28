<%-- 
    Document   : process
    Created on : May 28, 2016, 10:25:35 AM
    Author     : SRRK <rajeshs@cdac.in>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Receiving the Object through JSTL (Tag Library) -->
        <jsp:useBean id="user" class="com.zeroraj.www.dto.FormUser" scope="request">
            <!-- Going to use useBean self-creating object if object not found in scope -->
            <jsp:setProperty name="user" property="userName" value="Govinda"></jsp:setProperty>
        </jsp:useBean>
        
        <!-- Printing the Object attribute using JSTL (Tag Library) -->
        <jsp:getProperty name="user" property="userName"></jsp:getProperty>
    </body>
</html>
