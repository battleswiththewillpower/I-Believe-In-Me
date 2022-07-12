<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Contact Page</title>
	<link rel="stylesheet" type="text/css" href="/css/contact.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script type="text/javascript" src="/js/contact.js"></script>
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

<div class="text">
<h1>GET IN TOUCH</h1>
<i class="fa-solid fa-location-crosshairs"></i>
<p class="fa-solid">ADDRESS</p>
<p>123 Anywhere St., Any City State, Country 12345</p>
<i class="fa-solid fa-envelope"></i>
<p class="fa-solid">EMAIL</p>
<p>ibelieveinme@email.com</p>
<i class="fa-solid fa-phone"></i>
<p class="fa-solid">PHONE NUMBER</p>
<p>(123) 456 7890</p>
</div>

<div class="image">
<img alt="" id="" src="<c:url value="images/instasize.png" />" />
<img alt="jayda perry" id="jayda" src="<c:url value="images/jayda-perry.jpg" />" />

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