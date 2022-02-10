<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="false"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="${pageContext.request.contextPath}/styles/style.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<title><spring:message code="label.title" /></title>
</head>
<body>

<div class="sidenav">

<div style="text-align: center; padding: 5px 0; margin: 0;">
			<a class="btn btn-light"
				href="${pageContext.request.contextPath}/login1?lang=en"> English
			</a> &nbsp;&nbsp; <a class="btn btn-light"
				href="${pageContext.request.contextPath}/login1?lang=fr">
				Français</a>
		</div>
    
         <div class="login-main-text">
            <h2><spring:message code="label.hello"/>  </h2>
         
            <br>
            <%= new Date() %>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            
               <h1>
               <br>
               <spring:message code="label.userName" /> : ${user.login} <br>
               <spring:message code="label.associated" /><br>
               <spring:message code="label.firstName" /> : ${emp.firstName}<br>
               <spring:message code="label.lastName" /> : ${emp.lastName}<br>
               <spring:message code="label.startDate" /> : ${emp.startDate} <br>
               <spring:message code="label.title" /> : ${emp.title} <br>
               
                 </h1>
        </div>
      </div>
      

    
    
</body>
</html>

   
         
            
            