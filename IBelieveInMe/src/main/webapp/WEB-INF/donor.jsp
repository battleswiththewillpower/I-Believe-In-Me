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
	<title>Donor Page</title>
	<link rel="stylesheet" type="text/css" href="/css/donor.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script src="https://kit.fontawesome.com/e11a61e52a.js" crossorigin="anonymous"></script>
	
</head>
<body>
<script src="https://www.paypalobjects.com/donate/sdk/donate-sdk.js" charset="UTF-8"></script>

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

<div class="first-col">

<h1 class="title">
HI, WANT TO DONATE MONTHLY?
</h1>
<p class="monthly">Set up a monthly recurring donation by checking "Make this a monthly donation" on our donation on paypal</p>
<p class="text">I want to create a place where dancers can receive support to chase their dreams. My goal is to help over a thousand dancers to succeed in the industry by helping them have access to training without the stress of how to financially pay for the program.</p>
 <div id="paypal-donate-button-container"></div>

<!-- <p>Create An Account</p>
<div class="links">
<a href="/sign" id="reg">REGISTER</a> | | <a href="/sign" id="log">LOGIN</a>
</div> -->
   <div class="image-container">
    <img alt="Ballerina in a dress" id=""  src="<c:url value="images/206493.jpeg" />" />
	<img alt="Belly dancer" id="bellydancer"  src="<c:url value="images/5MOW2.png" />" /> 
   </div>


 

</div>

<div class="second-col">

<img alt="Beyonce dancers" id=""  src="<c:url value="images/southern-heritage.jpg" />" />
<img alt="Beyonce Dancer name Kimberly" id="kimberly" src="<c:url value="images/kgg_DNP0464.jpg" />" />
<%-- <div>
<img alt="Beyonce Dancer name Kimberly" id="" src="<c:url value="images/kgg_DNP0464.jpg" />" />
</div> --%>

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

	<script type="text/javascript" src="/js/donor.js"></script>

</body>
</html>