<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Here is your Omikuji</title>
	<style>
		.container{
			display: flex;
			flex-direction: column;
			text-align: center;
		}
		
	</style>
	</head>
	<body>
		<div class="container">
			<h1>Here is your Omikuji</h1>
			<p>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, <c:out value="${hobby}"/> for a living. The next time you see a 
			 <c:out value="${thing}"/> you will have good luck. Also,  <c:out value="${comment}"/>.</p>
		</div>
		
	</body>
</html>