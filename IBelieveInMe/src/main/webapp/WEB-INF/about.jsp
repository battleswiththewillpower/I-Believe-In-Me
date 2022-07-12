<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>About Page</title>
	<link rel="stylesheet" type="text/css" href="/css/about.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script src="https://kit.fontawesome.com/e11a61e52a.js" crossorigin="anonymous"></script>
	
</head>
<body>
<!-- NAVBAR -->
<div class="topnav">
  <a class="active" href="/">Home</a>
  <a href="/about">About</a>
  <a href="/dance">Apply Dancers</a>
  <a href="/donor">Donation</a>
<!--  <a href="/" class="logo" id="logo">I Believe In ME!</a> -->
  
  <a href="/contact" id="signup">Contact</a>

</div>


<div class="container">
<div class="col-one column">
<h1>WHAT INSPIRED THIS?</h1>
<p class="text">I was inspired to create this donation page because growing up I knew I was born to 
dance. I knew I wanted to go to a high-school for the arts. My goal was to graduate from Juilliard.
I wasn't able to fulfill my dream due to my family not supporting me. This caused me not to believe
in myself and struggle to become a dancer. Money wasn't the issue it was the belief. My family felt like it wasn't a career. 
This caused me to become insecure. I struggled to find help in other ways to manifest the dance career I wanted for myself. 
My dance journey wasn't easy and I would reach out for help financially . I would work so many hours to help pay for classes 
and dance intensive, working so many hours took me off of my dance journey due to burn out. My goal is to help other dancers 
stay on there journey and unite them with help and direction. We all need help in some type of way and finances are usually number one.</p>
</div>

<div class="col-two column">
<img alt="ballet feet" id="ballet-feet" src="<c:url value="images/Freed-center.jpg" />" />


</div>
</div>

<footer>
<a href="/" id="bot-logo">I Believe In ME!</a>
<div>

<i class="fa-brands fa-instagram"></i>
<i class="fa-brands fa-facebook"></i>
<i class="fa-brands fa-twitter"></i>
</div>

<div class="links">
<a href="/">Home</a>
<a href="/about">About</a>
 <a href="/dance">Apply Dancers</a>
 <a href="/donor">Donation</a>
 <a href="/admin">Admin</a>
<a href="#terms">Terms</a>
<a href="#privacy">Privacy Policy</a>
</div>
<p><i class="fa-solid fa-copyright">I Believe In Me  2022</i></p>

</footer>

</body>
</html>