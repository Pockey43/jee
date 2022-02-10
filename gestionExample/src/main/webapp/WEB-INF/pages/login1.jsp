<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
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
       <a href="${pageContext.request.contextPath}/index?lang=en">Login (English)</a>
       &nbsp;&nbsp;
       <a href="${pageContext.request.contextPath}/index?lang=fr">Login (French)</a>
       
    </div>
    
         <div class="login-main-text">
            <h2><s:message code="label.hello"/>  </h2>
         
            <br>
            <%= new Date() %>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="login" method="post">
                  <div class="form-group">
                     <label><s:message code="label.userName"/></label>
                     
                     <input type="text" class="form-control" placeholder="User Name" name="login">
                  </div>
                  <div class="form-group">
                     <label><s:message code="label.password"/></label>
                     <input type="password" class="form-control" placeholder="Password" name="password">
                  </div>
                  <s:message code="label.submit" var="labelSubmit"/>
                  <button type="submit" class="btn btn-black"><s:message code="label.login"/></button>
                  
               </form>
            </div>
         </div>
      </div>

    
    
</body>
</html>