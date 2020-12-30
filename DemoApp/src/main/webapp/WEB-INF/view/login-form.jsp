<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">	
		<h1>Login</h1>
	    <form:form action="loginUser" modelAttribute="user" method="POST">
			<div class="row">
				<div class="col-sm-3"><label>User Id</label></div>
				<div class="col-sm-3"><form:input path="userId" class="form-control" /></div>
				<form:errors path="userId" cssClass="error" />
			</div>
			<div class="row">
				<div class="col-sm-3"><label>Password</label></div>
				<div class="col-sm-3" ><form:input path="Password" class="form-control"  type="password" id="password"  /><img src="${pageContext.request.contextPath}/resources/images/eye.png" height="15"  onmouseover="mouseoverPass();" onmouseout="mouseoutPass();" /></div>
			<form:errors path="Password" cssClass="error" />
			</div>
			
			<div class="row">
				<div class="col-sm-3"><label></label></div>
				<div class="col-sm-3"><input type="submit" value="Login" class="btn btn-block"></div>
			</div>
			<div class="row">
				<p><a href="${pageContext.request.contextPath}/sign-up-form.jsp">Forgot Password</a>.</p>
			</div>
			<div class="row">
				<p>Not Registered? <a href="ShowSignUpForm">Create an Account</a>.</p>
			</div>
			
		</form:form>
	</div>
</body>
</html>