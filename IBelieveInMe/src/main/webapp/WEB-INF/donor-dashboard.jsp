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
<title>Donor Dashboard</title>
	<link rel="stylesheet" type="text/css" href="/css/donor-dashboard.css">
	<link rel="stylesheet" type="text/css" href="/css/navBar.css">
	<script type="text/javascript" src="/js/donor-dashboard.js"></script>
</head>
<body>

<div class="container">
<h1>Hello <c:out value="${user.firstName}" />, Thank you for being a consistent donor </h1>
<div>
<div class="total">
<%-- <table id="totalamount">
  <tr>
    <th>Amount Donated</th>
  <tr>
	<td>$<c:out value="${cards.amount}"/></td>
  </tr>
</table> --%>

</div>

<div class="donationHistory">
<h3>Donation History</h3>
<table id="history">
  <tr>
    <th>Amount</th>
    <th>Date</th>

<c:forEach  var="card" items="${ cards }">
  <tr>
	<td><c:out value="${card.amount}"></c:out></td>
	<!-- fix this -->
	<td><c:out value="${card.date}"></c:out></td>
  </tr>
 </c:forEach>
</table>
</div>
</div>
<div class="user-info">
<h3>User Information</h3>
<c:out value="${user.email}" />
<c:out value="${user.organization}" />
<c:out value="${user.address}" />
<c:out value="${user.city}" />
<c:out value="${user.zip}" />
<c:out value="${user.state}" />
<a href="/user/${user.id}/edit">Edit</a>
</div>

</div>

</body>
</html>