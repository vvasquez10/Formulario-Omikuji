<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title>Omikuji Form</title>
	</head>
	
	<body>
		<div class="container">
        <div class="form">
            <form action="/omikuji/processOmikuji" method="POST">
                <div class="form-group title">
					<h1>Send an Omikuji</h1>
                </div>
                <div class="form-group">
                    <label for="number">Pick any number between 5 to 25:</label>
                    <select class="custom-select" id="number" name="number">
                    	<c:forEach begin="5" step="1" end="25" var="variable">
							<option value="${variable}">${variable}</option>          
						</c:forEach>
                    </select>
                </div>  
                <div class="form-group">
                    <label for="city">Enter the name of any city:</label>
                    <input type="text" class="form-control" id="city" name="city">
                </div>
                <div class="form-group">
                    <label for="person">Enter the name of any real person:</label>
                    <input type="text" class="form-control" id="person" name="person">
                </div>
                <div class="form-group">
                    <label for="hobby">Enter professional endeavor or hobby:</label>
                    <input type="text" class="form-control" id="hobby" name="hobby">
                </div>
                <div class="form-group">
                    <label for="thing">Enter any type of living thing:</label>
                    <input type="text" class="form-control" id="thing" name="thing">
                </div>
                              
                <div class="form-group">
                    <label for="comment">Say something nice to someone:</label>     
                    <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
                </div>
                <div class="form-group boton">
                    <input type="submit" class="btn-success btn-sm" value="Enviar">      
                </div>                                            
            </form>
        </div>
    	</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</body>
</html>