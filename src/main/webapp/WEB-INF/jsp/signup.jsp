<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enrollment Signup</title>
<style>
	.green { 
		font-weight: bold; color: green; 
	}
    .message { 
    	margin-bottom: 10px; 
    }	
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
</head>
<body>
<h1>Student Enrollment Signup</h1>

<c:if test="${not empty message}">
	<div class="message green">${message}</div>
</c:if>

<form:form commandName="student">
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
		<td><label for="firstNameInput">First Name:</label></td>
		<td><form:input path="firstName" id="firstNameInput" /></td>
		<td><form:errors path="firstName" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="lastNameInput">Last Name:</label></td>
		<td><form:input path="lastName" id="lastNameInput"/></td>
		<td><form:errors path="lastName" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="dateOfBirthInput">Date of Birth:</label></td>
		<td><form:input path="dateOfBirth" id="dateOfBirthInput"/></td>
		<td><form:errors path="dateOfBirth" cssClass="error" /></td>
	</tr>
	<tr>
		<td><label for="emailAddressInput">Email Address:</label></td>
		<td><form:input path="emailAddress" id="emailAddressInput"/></td>
		<td><form:errors path="emailAddress" cssClass="error" /></td>
	</tr>
	<tr>
		<td colspan="3"><input type="submit" value="Signup"></td>
	</tr>
</table>
</form:form>
<a href="<spring:url value="login.html"/>">Login</a>
</body>
</html>