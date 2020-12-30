<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Form</title>  
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">	
		<h1>User List</h1>    
   		<table class="table table-hover">
   			<thead>
			<tr>
				<th>User Id</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Last Name</th>
				<th>Action</th>
			</tr>
			</thead>
			<tbody>
			<!-- loop over and print our customers -->
			<c:forEach var="tempUser" items="${users}">
				<c:url var="updateLink" value="showFormForUpdate">
					<c:param name="userId" value="${tempUser.userId }"></c:param>
				</c:url>
				<c:url var="deleteLink" value="deleteUser">
					<c:param name="userId" value="${tempUser.userId }"></c:param>
				</c:url>
				<tr>
					<td> ${tempUser.userId} </td>
					<td> ${tempUser.firstName} </td>
					<td> ${tempUser.middleName} </td>
					<td> ${tempUser.lastName} </td>
					<td>
						<a href="${updateLink}">Update</a>|
						<a href="${deleteLink}" onclick="if(!(confirm('Are your sure want to delete the customer?'))) return false">Delete</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<p><a href="${pageContext.request.contextPath}/index.jsp">Back to Home Page</a></p>
	</div>
</body>
</html>