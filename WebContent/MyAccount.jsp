<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
    
    <%@page import="java.util.List"%>
	<%@page import="com.blood.Donor"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script src="js/jquery-3.1.1.js"></script>
  <script src="js/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
      <li><a href="myProfile" title="My Profile">My Profile</a></li>
      <li><a href="editProfile" title="Edit My Profile">Edit My Profile</a></li>
      <li><a href="myMessages" title="Messages">Messages</a></li>
      <li><a href="myAccount.jsp" title="My Account">My Account</a></li>
      <li><a href="Logout" title="Logout">Logout</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
     <%
  		List<Donor> donorList=(List)session.getAttribute("donorDetails");
     	for(Donor d:donorList){
	  %>
  <h1 id="pageID">Delete My Account <%-- <%=d.getName()%> --%></h1>
    <div id="mainArticle">
    <div id="mainArticle">
      <div id="donorInfo">
      <div class="form">
    <form class="login-form" action="delete" method="post">
    <p>
     <input name="id" type="text" hidden value="<%=d.getId()%>" class="text" id="name2" tabindex="100"/>
     </p>
     <p id="message">Not intersted delete my account</p>
      <button>delete</button>
    </form>
        <p>&nbsp;</p>
      </div>
    </div>
    
   
    
    
    
    
    

    </div>
  </div>
  
  <% } %>

  
  
  <div id="footer">
  </div>
</div>













</body>
</html>