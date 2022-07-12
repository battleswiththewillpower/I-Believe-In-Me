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
	<link rel="stylesheet" type="text/css" href="/css/scholarshipForm.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script type="text/javascript" src="/js/scholarshipForm.js"></script>
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

<h1>Scholarship  Submission</h1>
 <form:form action="/scholarform" method="post" modelAttribute="newApplicant">
    <div>
		<form:label path="firstName" class="col-25">First Name: </form:label><br />
		<form:input path="firstName" class="col-75"/>
		<form:errors class="validate col-75" path="firstName"/>
	</div>
	
	<div>
		<form:label path="lastName" class="col-25">Last Name: </form:label><br />
		<form:input path="lastName" lass="col-75"/>
		<form:errors class="validate col-75" path="lastName"/>
	</div>
	
	<div>
		<form:label path="country" class="col-25">Country</form:label> <br />
   		<form:select path="country" >
   		<form:option value="United States">USA</form:option>   			
   		</form:select>
   		<form:errors class="validate col-75" path="country"/>
	</div> 
	
	
 	<div>
	<form:label path="state" class="col-25">State</form:label> <br />
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
   		<form:errors class="validate col-75" path="state"/>
	</div> 
	
	<div>
		<form:label path="telephone" class="col-25"> Phone Number: </form:label><br />
		<form:input path="telephone"/>
		<form:errors class="validate col-75" path="telephone"/>
	</div> 
	
		<div>
		<form:label path="email" class="col-25">Email: </form:label><br />
		<form:input path="email"/>
		<form:errors class="validate col-75" path="email"/>
	</div>
	
			<div>
		<form:label path="programName" class="col-25">Training Program Name: </form:label><br />
		<form:input path="programName"/>
		<form:errors class="validate col-75" path="programName"/>
	</div>
	
				<div>
		<form:label path="choreographer" class="col-25">Choreographer: </form:label><br />
		<form:input path="choreographer"/>
		<form:errors class="validate col-75" path="choreographer"/>
	</div>

	
			<div>
		<form:label path="studioName" class="col-25">Name Of Studio: </form:label><br />
		<form:input path="studioName"/>
		<form:errors class="validate col-75" path="studioName"/>
	</div>
	
			<div>
		<form:label path="danceStudioLocation" class="col-25">Dance Studio Location: </form:label><br />
		<form:input path="danceStudioLocation"/>
		<form:errors class="validate col-75" path="danceStudioLocation"/> 
	</div>
	
		<div>
		<form:label path="programDate" >Program Date: </form:label><br />
		<form:input path="programDate" type="date"/>
		<form:errors class="validate " path="programDate" />
		
	</div>
	
		<div>
		<form:label path="instagramHandle" class="col-25"> Instagram Handle: </form:label><br />
		<form:input path="instagramHandle"/>
		<form:errors class="validate col-75" path="instagramHandle"/>
	</div>
	
		<div>
		<form:label path="website" class="col-25">Website: </form:label><br />
		<form:input path="website"/>
		<form:errors class="validate col-75" path="website"/>
	</div>
	

 	<div >
		<form:label path="story" class="col-25">Tell Me Your Story: </form:label><br />
		<form:textarea rows="3" path="story" /> <br>
		<form:errors class="validate" path="story" />
	</div> 

	

    <input type="submit" class="submit" value="Submit"/>
    
    
</form:form>
<a class="cancel" href="/dance">Cancel</a>


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