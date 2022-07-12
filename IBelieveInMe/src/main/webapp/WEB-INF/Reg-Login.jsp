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
<title>Reg-Login Page</title>
	<link rel="stylesheet" type="text/css" href="/css/reg-log.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script type="text/javascript" src="/js/reg-log.js"></script>
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
<div class="reg-form">
<%-- <h1>Register</h1>
 <form:form action="/register" method="post" modelAttribute="newUser">

	    <div>
		<form:label path="firstName">First Name: </form:label><br />
		<form:input path="firstName"/>
		<form:errors path="firstName"/>
	</div>
	
	 <div>
		<form:label path="lastName">Last Name: </form:label><br />
		<form:input path="lastName"/>
		<form:errors path="lastName"/>
	</div>
	
	<div>
		<form:label path="organization">Organization: </form:label><br />
		<form:input path="organization"/>
		<form:errors path="organization"/>
	</div>
		<div>
		<form:label path="address">Address: </form:label><br />
		<form:input path="address"/>
		<form:errors path="address"/>
	</div>
	<div>
		<form:label path="city">City: </form:label><br />
		<form:input path="city"/>
		<form:errors path="city"/>
	</div>
	
		<div>
	<form:label path="state">State</form:label> <br />
   		<form:select path="state">
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>   			
   		</form:select>
   		<form:errors path="state"/>
	</div> 
	<div>
		<form:label path="zip">Zip Code: </form:label><br />
		<form:input path="zip"/>
		<form:errors path="zip"/>
	</div>
	
	
	<div>
		<form:label path="email">Email: </form:label><br />
		<form:input path="email"/>
		<form:errors path="email"/>
	</div>
	<div>
		<form:label path="password">Password: </form:label><br />
		<form:input path="password"/>
		<form:errors path="password"/>
	</div>
<div>
		<form:label path="confirm">Confirm Password: </form:label><br />
		<form:input path="confirm"/>
		<form:errors path="confirm"/>
	</div>
	
    
    <input type="submit" value="Register"/>
</form:form> 
</div> --%>

<div class="login-form">
<h1>Login</h1>
 <form:form action="/login" method="post" modelAttribute="newLogin">
   
	<div class="label">
		<form:label path="email">Email: </form:label><br />
		<form:input path="email"/>
		<form:errors path="email"/>
	</div>
	<div class="label">
		<form:label path="password">Password: </form:label><br />
		<form:input path="password"/>
		<form:errors path="password"/>
	</div>
	
    
    <input type="submit" value="Login"/>
</form:form> 
</div>
</div>

</body>
</html>