<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	.error {
		color:#ff0000;
		font-size: 0.9em; 
		font-weight: bold;
	}
	.errorblock {
		color:#000;
		background-color:#ffEEEE;
		border:3px solid #ff0000;
		padding:8px;
		margin:16px;
	}
</style>
<title>Student Enrollment Login</title>
</head>
<body>
<h1>Student Enrollment Login</h1>
<form:form commandName="studentLogin">
<!-- 
<form:errors path="*" cssClass="errorblock" element="div" />
 -->
<table>
	<tr>
		<td><label for="userNameInput">User Name:</label></td>
		<td><form:input path="userName" id="userNameInput"/></td>
		<td><form:errors path="userName" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="passwordInput">Password:</label></td>
		<td><form:password path="password" id="passwordInput"/></td>
		<td><form:errors path="password" cssClass="error" /></td>
	</tr>
	<tr>
		<td colspan="3"><input type="submit" value="Login"></td>
	</tr>
</table>
</form:form>
</body>
</html>