<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" type="text/css" href="/css/home.css">
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

<div class="wrapper">
	<div id="paypal-donate-button-container-2"> </div>
<div class="first-section">
<div class="header">
<img alt="smoke" id="smoke" src="<c:url value="images/3.png" />" />
<img alt="ballerina" id="ballerina"  src="<c:url value="images/1.png" />" />
<img alt="stage" id="stage" src="<c:url value="images/2.png" />" />
<h4 id="left-text" >Help <br> Make A </h4> 
<h4 id ="right-text">Dream <br> Come True!  </h4>


</div>

</div>

<div class="back"> 
<div class="container" id="effect">

<div class="second-section">
<h3 class="center-text">How Much Would You Like To Donate?</h3>
<div class="mid-row">

<img id="slide-left" class="slide left" alt="children ballerinas"  src="<c:url value="images/children-ballerinas-img.jpg" />" />
<img id="slide-right" class="slide right" alt="single-ballerina"  src="<c:url value="images/ingrid2.jpg" />" />
</div>

 <div id="paypal-donate-button-container"></div>

<!--   <script>

</script> -->


</div>


<div class="submission-section">
<h2>SUBMISSION <br> JOURNEY</h2>

<div class="submission-section-two ">

<div class="first fade-in">
<h3 class="submis">Submission</h3>
  <p>All dancers are welcomed to submit </p>
  <p>Please submit the dance intensive, location, and choreographer</p>
  <p>Please submit the date of the program</p>
  <p>Please fill out the form completely</p>
  <p>Re-apply for a donation every three months </p>

</div>

<div class="second fade-in">
<h3 class="submis">Acceptance</h3>

<p>We will email you upon acceptance</p>
<p>In order to be accepted for the scholarship, please submit valid information </p>
<p>If we need any more information we will reach out </p>
<p>We want to help you succeed in your journey </p>
<p>It will take 1-2 weeks before receiving an acceptance email </p>

</div>

<div class="third fade-in">
<h3 class="submis">Payment</h3>

<p>We are here to help cover most of the cost but can't promise to cover all of it.</p>
<p>The payment will be sent to the program </p>
<p>We will only cover the cost of the program</p>
<p>Donations are split depending on how much money was received per month </p>
</div>

</div>

</div>
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

<script type="text/javascript" src="/js/home.js"></script>
</div>
</body>
</html>