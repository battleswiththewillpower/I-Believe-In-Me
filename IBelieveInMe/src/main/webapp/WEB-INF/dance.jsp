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
	<title>Dance Page</title>
	<link rel="stylesheet" type="text/css" href="/css/dance.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script type="text/javascript" src="/js/dance.js"></script>
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

<div class="first-col">

<ul class="perform">
  <li>
    <input type="checkbox" />
    <div class="letter">P</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">E</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">R</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">F</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">O</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">R</div>
  </li>
  <li>
    <input type="checkbox" />
    <div class="letter">M</div>
  </li>
</ul>

<h1 class="">
<span>Want to receive a scholarship </span><span>to train at your dream program?</span>
</h1>
<p>"May your dreams come true"</p>
<img alt="ballerina posing on swing" id="ballerina-swing" src="<c:url value="images/aesha-ash.jpg" />" />
<p class="quote">"YES YOU DO DESERVE THIS SCHOLARSHIP" </p>
<p>Please remember to submit validate information. If any typos exist it will be a cause for disqualification's. </p>
</div>

<div class="second-col">
<img alt="stage" id="" src="<c:url value="images/danceHistoryphoto.jpegcopy.jpg" />" />
<p>Fill out the form below</p>
<a href="/applicant/new" class="button-85">Click Here To Submit A Form</a>
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