<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login-Page</title>
</head>
<body>

	<!--  Login Page -->
	<h1>Login with Username and Password (non-null)</h1>
	<form action="success.jsp" method="post">
		<br>Login Name : <input name=username type="text" />
		<br>Password   : <input name=password type="password" />
                <br>Pincode    : <input name=pincode type="text" />
                <br>Email      : <input name=email type="text" />
		<br><input type="submit" />
	</form> 
	<!-- Just a comment -->
</body>
</html>