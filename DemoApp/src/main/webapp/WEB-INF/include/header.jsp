<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="includefile.jsp" />
</head>
<body>
	<div>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">HRMS</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
	      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
	        <ul class="dropdown-menu">
	          <li><a href="#">Page 1-1</a></li>
	          <li><a href="#">Page 1-2</a></li>
	          <li><a href="#">Page 1-3</a></li>
	        </ul>
	      </li>
	      <li><a href="${pageContext.request.contextPath}/user/list">User List</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="${pageContext.request.contextPath}/user/ShowSignUpForm"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      <li><a href="${pageContext.request.contextPath}/user/ShowLoginForm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    </ul>
	  </div>
	</nav>
	</div>
</body>
</html>