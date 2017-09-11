<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<title>Blood Bank</title>
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
      <li><a href="Home.jsp" title="Go To Home Page">Home</a></li>
      <li><a href="DonorRegistration.jsp" title="Register as a Donor">Donor Registration</a></li>
      <li><a href="Login.jsp" title="Donor Login">Donor Login</a></li>
      <li><a href="#" title="Why Donates & Who Needs Blood">Why Donates,Who Needs</a></li>
      <li><a href="#" title="Am i Eligible for Donation ?">Am I Eligible</a></li>
      <li><a href="#" title="About">About</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
  <h1 id="pageID">Search For Donors</h1>
    <div id="mainArticle">
    
    
    
    
    
      <div id="contact">
      
      
      <form id="frmContact" name="frmSearch" method="post" action="donorSearch">
        
        
          <fieldset id="contactInfo">
          
          <p>
              <label for="bloodgroup">Blood Group</label>
              <select name="bloodgroup"  id="bloodgroup" tabindex="150">
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
              <label for="district">District</label>
              <select name="district" id="district" required tabindex="150">
                <option value="Trivandrum">Trivandrum</option>
                <option value="Kollam">Kollam</option>
                <option value="Pathanamthitta">Pathanamthitta</option>
                <option value="Alappuzha">Alappuzha</option>
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
              <input type="submit" name="submit" id="submit" value="Search" tabindex="300" />
            </p>
          </fieldset>
        </form>
        
        <p>&nbsp;</p>
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