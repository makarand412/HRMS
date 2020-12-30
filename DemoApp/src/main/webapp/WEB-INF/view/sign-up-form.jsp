<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Form</title>

</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>
		<form:form action="saveUser" modelAttribute="user" method="POST">
			<div class="row">
				<div class="col-sm-3">
					<label>User Id (*)</label>
				</div>
				<div class="col-sm-3">
					<form:input path="userId" class="form-control" />
				</div>
				<form:errors path="userId" cssClass="error" />

			</div>
			<div class="row">
				<div class="col-sm-3">
					<label>Password (*)</label>
				</div>
				<div class="col-sm-3">
					<form:input path="Password" class="form-control" type="password"
						id="password" />
					<img
						src="${pageContext.request.contextPath}/resources/images/eye.png"
						height="15" onmouseover="mouseoverPass();"
						onmouseout="mouseoutPass();" />
				</div>
				<form:errors path="Password" cssClass="error" />

			</div>
			<div class="row">
				<div class="col-sm-3">
					<label>First Name (*)</label>
				</div>
				<div class="col-sm-3">
					<form:input path="firstName" class="form-control" />
				</div>
				<form:errors path="firstName" cssClass="error" />

			</div>
			<div class="row">
				<div class="col-sm-3">
					<label>Middle Name (*)</label>
				</div>
				<div class="col-sm-3">
					<form:input path="middleName" class="form-control" />
				</div>
				<form:errors path="middleName" cssClass="error" />

			</div>
			<div class="row">
				<div class="col-sm-3">
					<label>Last Name (*)</label>
				</div>
				<div class="col-sm-3">
					<form:input path="lastName" class="form-control" />

				</div>
				<form:errors path="lastName" cssClass="error" />
			</div>
			<div class="row">
				<div class="col-sm-3">
					<label>Gender</label>
				</div>
				<div class="col-sm-3">
					<label class="radio-inline"> <form:radiobutton
							path="gender" value="Male" /> Male
					</label> <label class="radio-inline"> <form:radiobutton
							path="gender" value="Female" /> Female
					</label> <label class="radio-inline"> <form:radiobutton
							path="gender" value="Other" /> Other
					</label>

				</div>
				<form:errors path="gender" cssClass="error" />
			</div>

			<div class="row">
				<div class="col-sm-3">
					<label></label>
				</div>
				<div class="col-sm-3">
					<input type="submit" value="Save" class="btn btn-block">
				</div>
			</div>
		</form:form>
	</div>

	<div class="container signin">
		<p>
			Already have an account? <a href="ShowLoginForm">Sign in</a>.
		</p>
	</div>

</body>
</html>