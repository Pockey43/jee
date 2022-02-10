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

<div style="text-align: center;padding:5px 0;margin:0;">
       <a href="${pageContext.request.contextPath}/login?lang=en"> (English)</a>
       &nbsp;&nbsp;
       <a href="${pageContext.request.contextPath}/login?lang=fr"> (French)</a>
       
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
               ${user} </h1>
        </div>
      </div>
      

    
    
</body>
</html>

   
         
            
            