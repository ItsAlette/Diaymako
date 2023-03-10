<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bienvenue sur DIAYMAKO</title>
<style>
	body, html {
	  height: 100%;
	  margin: 0;
	  font: 400 15px/1.8 "Lato", sans-serif;
	  color: #777;
	}
	
	.bgimg-1, .bgimg-2, .bgimg-3 {
	  position: relative;
	  opacity: 0.9;
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover;
	
	}
	.bgimg-1 {
	  background-image: url("images/index.PNG");
	  height: 100%;
	}
	
	.caption {
	  position: absolute;
	  left: -30px;
	  top: 50%;
	  width: 100%;
	  text-align: center;
	  color: #000;
	  
	}
	
	.caption span.border {
	  background-color: #111;
	  color: #fff;
	  padding: 18px;
	  font-size: 25px;
	  letter-spacing: 10px;
	  border-radius: 10px;
	}
	
	h3 {
	  letter-spacing: 5px;
	  text-transform: uppercase;
	  font: 20px "Lato", sans-serif;
	  color: #111;
	}
	
	input
	{
	  width: 200px;
	  height: 50px;
	  background-color: white;
	  color: black;
	  font-size: 20px;
	  font-weight: bold;
	  border-radius: 10px;
	  cursor: pointer;
	}
	
	input:hover
	{
	  background-color: black;
	  color:white;
	}
	</style>
</head>
<body>
				
	<div class="bgimg-1">
	  <div class="caption">
	    <span class="border">
	      <a href="login.jsp">
	        <input type="button" value="SE CONNECTER">
	      </a>
	    </span>
	    <br>
	    <br>
	    <span class="border">
	      <a href="inscription.jsp">
	        <input type="button" value="S'INSCRIRE">
	      </a>
	    </span>
	  </div>
	</div>
</body>
</html>