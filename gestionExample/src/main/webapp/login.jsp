<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html  >

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Hello Struts 2</title>

</head>

<body>
	<%@include file="jspf/sidenav.jsp"%>
	<s:url var="indexEN" action="locale1" namespace="/">
		<s:param name="request_locale">en</s:param>
	</s:url>

	<s:url var="indexFR" action="locale1" namespace="/">
		<s:param name="request_locale">fr</s:param>
	</s:url>


	<div class="btn-group dropleft" style="float: right">
		<button class="btn btn-secondary dropdown-toggle" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">
			<i class="fas fa-globe"></i>
		</button>
		<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			<s:a class="dropdown-item" href="%{indexEN}">English</s:a>
			<s:a class="dropdown-item" href="%{indexFR}">Français</s:a>

		</div>
	</div>


	<div class="main">
	
	
	
			<div style="padding-top:20%">
				<h2><s:text name="global.form"/></h2>
				
				<s:form action="login" namespace = "/">
				<s:set var="fn" value="getText('global.firstName')" />
				<s:set var="ln" value="getText('global.lastName')" />
				<s:set var="age" value="getText('global.age')" />
				<s:set var="title" value="getText('global.title')" />
					<s:radio  key="global.gender" name="personne.genre"  list="#{'Mr' :'Male','Mme' :'Female'}"/>
					
					<s:textfield name="personne.firstName" key="global.firstName*" placeholder="${fn }" />
					<s:fielderror style="color: red;" fieldName="personne.firstName" />
					
					<s:textfield name="personne.lastName" key="global.lastName*" placeholder="${ln }" />
					<s:fielderror style="color: red;" fieldName="personne.lastName" />
					
					<s:textfield type ="number" name="personne.age" key="global.age*" placeholder="${age }" />
					<s:fielderror style="color: red;" fieldName="personne.age*" />
					<s:textfield name="personne.title" key="global.title" placeholder="${title }" />
					<s:textfield type="date"  name="personne.date" key="global.date" format="DD-MM-YYYY" />
					<s:submit class="btn btn-black" key="global.send" />
				</s:form>
				<s:property value = "getText('global.fiedl-required')" />
				

				<%--                <h1><a href="<s:url action="hello"/>">Hello Struts 2</a></h1> --%>
			
		
		
      
	
	
	</div>
	</div>

	
</body>

</html>