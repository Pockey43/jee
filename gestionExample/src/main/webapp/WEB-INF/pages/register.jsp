<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<style>
.error{
color : red
}
</style>
<body>

	<div class="sidenav">

		<div style="text-align: center; padding: 5px 0; margin: 0;">
			<a class="btn btn-light"
				href="${pageContext.request.contextPath}/register?lang=en"> English
			</a> &nbsp;&nbsp; <a class="btn btn-light"
				href="${pageContext.request.contextPath}/register?lang=fr">
				Français</a>
		</div>

		<div class="login-main-text">
			<h2>
				<s:message code="label.hello" />
			</h2>

			<br>
			<%=new Date()%>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">

			<form:form action="register" modelAttribute="emp" method="post"> 
				<spring:message code="label.male" />: <form:radiobutton path="gender" value="M"/>
				<spring:message code="label.female" />: <form:radiobutton path="gender" value="F"/> 
				<br>
				<br>
				<spring:message code="label.firstName" />: <form:input path="firstName" />
				<form:errors path="firstName" cssClass="error" />
				<br>
				<br>  
				<spring:message code="label.firstName" />(*) : <form:input path="lastName" />
				<form:errors path="lastName" cssClass="error" />
				<br>
				<br>
				Age: <form:input type="number" path="age" value="0" />
				<form:errors path="age" cssClass="error" />
				<br>
				<br>  
				E-mail(*): <form:input type="email" path="email" />
				<form:errors path="email" cssClass="error" /><br>
				<br>  
				<spring:message code="label.password" />(*): <form:password path="password" />
				<form:errors path="password" cssClass="error" />
				<br>
				<br>
				<spring:message code="label.title" />: <form:select path="title">  
				<form:option value="select" label="----- Select a title -----"/>
		        <form:option value="Engineer" label="Engineer"/>  
		        <form:option value="Dev" label="Dev"/>  
		        <form:option value="Professor" label="Professor"/>  
		        <form:option value="Student" label="Student"/>  
		        <form:option value="Intern" label="Intern"/>
		        </form:select>  
		        <br>
		        <br>  
				<spring:message code="label.startDate" />:(*): <form:input type="Date" path="startDate" />
				<form:errors path="startDate" cssClass="error" />
				<button type="submit" class="btn btn-black"  >
						<spring:message code="label.save" />
					</button>
				
			</form:form>



		</div>
	</div>



</body>
</html>