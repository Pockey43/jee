<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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

<body>
<div class="sidenav">
<div style="text-align: center; padding: 5px 0; margin: 0;">
			<a class="btn btn-light"
				href="${pageContext.request.contextPath}/registersucceed?lang=en"> English
			</a> &nbsp;&nbsp; <a class="btn btn-light"
				href="${pageContext.request.contextPath}/registersucceed?lang=fr">
				Français</a>
		</div>
         <div class="login-main-text">
            <div class="login-main-text">
			<h2>
				<s:message code="label.hello" />
			</h2>
			
			<h3>
				<c:forEach var = "e" begin = "1" end = "5">
	         	Item <c:out value = "${i}"/><p>
	      		</c:forEach>
      		</h3>

			<br>
			<%=new Date()%>
		</div>
		</div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <h1> ${emp}</h1>
               
            </div>
         </div>
      </div>
</body>

</html>