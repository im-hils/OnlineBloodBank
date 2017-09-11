<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%
	session.removeAttribute("donorList");
%>

<div id="wrapper">

  <div id="mainHeader">
    <div id="header">
    	<a href="Home.jsp">
    		<img src="<c:url value='/resources/images/logo.gif' />"  alt="new sTYLE"/>
    	</a>
    </div>
  </div>
  
<div id="mainNav">
   <ul id="baseNav">
      <li><a href="Home.jsp" title="Go To Home Page">Home</a></li>
      <li><a href="DonorRegistration.jsp" title="Register as a Donor">Donor Registration</a></li>
      <li><a href="Login.jsp" title="Donor Login">Donor Login</a></li>
      <li><a href="#" title="Why Donates & Who Needs Blood">Why Donates,Who Needs</a></li>
      <li><a href="#" title="Am i Eligible for Donation ?">Am I Eligible</a></li>
      <li><a href="#" title="About">About</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
    <h1 id="pageID">Donor Login</h1>
    <div id="mainArticle">
    
    
    <div id="loginForm" class="login-page">
  	<div class="form">
    <form class="login-form" action="login" method="post">
      <input type="text" placeholder="email id" name="email"/>
      <input type="password" placeholder="password" name="password"/>
      <button>login</button>
      <br>
      <br>
      <p id="message">Not registered? <a href="DonorRegistration">Create an account</a></p>
    </form>
  </div>
</div>
      
    </div>
  </div>
  
  
  <div id="sidebar">
  
    <div id="facts" class="callOut">
      <h1>Did You Know?</h1>
      <p>Most of us must think that our one blood donation helps saves one precious life. It is not so. One blood donation can help save upto three lives! How cool is that?</p>
    </div>
  </div>
  
  
  <div id="footer">
  </div>
</div>
</body>
</html>