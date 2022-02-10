<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>

<html>
<head>

<!-- <meta charset="UTF-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"> -->

<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="${pageContext.request.contextPath}/styles/style.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<title><spring:message code="label.title" /></title>
</head>
<body>

	<div class="sidenav">

		<div style="text-align: center; padding: 5px 0; margin: 0;">
			<a class="btn btn-light"
				href="${pageContext.request.contextPath}/index?lang=en"> English
			</a> &nbsp;&nbsp; <a class="btn btn-light"
				href="${pageContext.request.contextPath}/index?lang=fr">
				Français</a>
		</div>
		
	
		<div class="login-main-text">
			<h2>
				<spring:message code="label.hello" />
			</h2>

			<br>
			<%=new Date()%>
		</div>
	</div>

<!-- 	<div class="btn-group dropleft" style="float: right"> -->
<!-- 		<button class="btn btn-secondary dropdown-toggle" type="button" -->
<!-- 			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" -->
<!-- 			aria-expanded="false"> -->
<!-- 			<i class="fas fa-globe"></i> -->
<!-- 		</button> -->
<!-- 		<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"> -->
<%-- 			<a href="${pageContext.request.contextPath}/index?lang=en"> --%>
<%-- 				English</a> <a href="${pageContext.request.contextPath}/index?lang=fr"> --%>
<!-- 				French</a> -->

<!-- 		</div> -->
	</div>
	<div class="main">

		<div class="col-md-6 col-sm-12">
			<div class="login-form">
				<form action="login" method="post">
					<div class="form-group">
						<label><spring:message code="label.userName" /></label> <input
							type="text" class="form-control" placeholder="User Name"
							name="login">
					</div>
					<div class="form-group">
						<label><spring:message code="label.password" /></label> <input
							type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
					<spring:message code="label.submit" var="labelSubmit" />
					<button type="submit" class="btn btn-black">
						<spring:message code="label.login" />
					</button>
					<button type="submit" class="btn btn-black">
						<spring:message code="label.register" />
					</button>

				</form>
			</div>
		</div>
		<h2 style="color: red">${message }</h2>
	</div>



</body>
</html>