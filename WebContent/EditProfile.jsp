<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
    
    <%@page import="java.util.List"%>
	<%@page import="com.blood.Donor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script src="js/jquery-3.1.1.js"></script>
  <script src="js/jquery-ui.js"></script>
  
  
  <script>
  $( function() {
    $( "#dob" ).datepicker();
  } );
  </script>

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
      <li><a href="MyAccount" title="My Account">My Account</a></li>
      <li><a href="Logout" title="Logout">Logout</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
   <%
  		List<Donor> donorList=(List)session.getAttribute("donorDetails");
     	for(Donor d:donorList){
	  %>
    <h1 id="pageID">Edit Profile</h1>
    <div id="mainArticle">
    
    
    
      <div id="contact">
        <form id="frmContact" name="frmContact" method="post" action="updateProfile">
        
        <fieldset id="accountInfo">
         <legend><strong>Account Information</strong></legend>
         <p>
              <input name="id" type="text" hidden value="<%=d.getId()%>" class="text" id="name2" tabindex="100"/>
            </p>
         <p>
              <label for="name">Name</label>
              <input name="name" type="text" required value="<%=d.getName()%>" class="text" id="name2" tabindex="100"/>
            </p>
            <p>
              <label for="email">Email</label>
              <input name="email" type="text" readonly value="<%=d.getEmail()%>" class="text" id="email" tabindex="110"  />
            </p>
             <p>
              <label for="password">Password</label>
              <input name="password" type="text" readonly value="<%=d.getPassword()%>" class="text" id="password" tabindex="110"  />
            </p>
        </fieldset>
        
        
          <fieldset id="contactInfo">
            <legend><strong>Contact Information</strong></legend>
            
            <p>
              <label for="phone">Phone</label>
              <input name="phone" type="text" required value="<%=d.getPhone()%>" class="text" id="phone" tabindex="120" />
            </p>
            <p>
              <label for="address">Address</label>
              <input name="address" type="text" value="<%=d.getAddress()%>" class="text" id="address" tabindex="130" />
            </p>
            <p>
              <label for="city">City</label>
              <input name="city" type="text" required value="<%=d.getCity()%>" class="text" id="city" tabindex="140" />
            </p>
            <p>
              <label for="district">District</label>
              <select name="district" id="district" required value="<%=d.getDistrict()%>" tabindex="150">
                <option value="Trivandrum">Trivandrum</option>
                <option value="Kollam">Kollam</option>
                <option value="Pathanamthitta">Pathanamthitta</option>
                <option value="Alappuzha">Alappuzha</option>
                 <option value="Kottayam">Kottayam</option>
                <option value="Ernakulam">Ernakulam</option>
                <option value="Thrissur">Thrissur</option>
                <option value="Palakkadu">Palakkadu</option>
                <option value="Malappuram">Malappuram</option>
                <option value="Kozhikkodu">Kozhikkodu</option>
                <option value="Wayanadu">Wayanadu</option>
                <option value="Kannur">Kannur</option>
                <option value="Kasargodu">Kasargodu</option>
              </select>
            </p>
            <p>
              <label for="pin">Pin Code</label>
              <input name="pin" type="text" class="text" value="<%=d.getPin()%>" id="zip" tabindex="160" />
            </p>
          </fieldset>
          <fieldset id="personalInfo">
            <legend><strong>Personal Information</strong></legend>
            <p>
              <label for="gender">Gender</label>
              <input type="radio" name="gender" checked="checked" value="male"/>Male
			  <input type="radio" name="gender" value="female"/>Female
			  </p>
		
			  <p>
              <label for="dob">Date Of Birth</label>
              <input name="dob" type="text" required value="<%=d.getDob()%>" id="dob" tabindex="160" />
            </p>
            <p>
              <label for="height">Height</label>
              <input name="height" type="text" value="<%=d.getHeight()%>"  id="height" tabindex="160" />
            </p>
             <p>
              <label for="weight">Weight</label>
              <input name="weight" type="text" value="<%=d.getWeight()%>" id="weight" tabindex="160" />
            </p>
            <p>
              <label for="bloodgroup">Blood Group</label>
              <select name="bloodgroup"  id="bloodgroup" value="<%=d.getBloodgroup()%>" tabindex="150">
                <option value="O+">O +ve</option>
                <option value="O-">O -ve</option>
                <option value="A+">A +ve</option>
                <option value="A-">A -ve</option>
                <option value="B+">B +ve</option>
                <option value="B-">B -ve</option>
                <option value="AB+">AB +ve</option>
                <option value="AB-">AB -ve</option>
              </select>
            </p>
            
             <p>
              <input type="submit" name="submit" id="submit" value="Save" tabindex="300" />
            </p>
          </fieldset>
        </form>
        <p>&nbsp;</p>
      </div>
    </div>
  </div>
    <% } %>
  
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