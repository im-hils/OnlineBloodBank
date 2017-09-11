<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  
  <script type="text/javascript">
  function validate(){

		if (document.frmContact.name.value.length > 10) {
			alert("Too much of data in the name field..only 25 chars allowed");
			return false;
		}
		if (document.frmContact.name.value.length < 3) {
			alert("minimum 4 characters needed");
			return false;
		}
		 var x = document.forms["frmContact"]["email"].value;
		 var atpos = x.indexOf("@");
		 var dotpos = x.lastIndexOf(".");
		 if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
		        alert("Not a valid e-mail address");
		        return false;
		 }
		 if (document.frmContact.password.value != document.frmContact.confirm.value) {
			alert("password and retype password doesn't match");
			return false;
		}
 
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
      <li><a href="Home.jsp" title="Go To Home Page">Home</a></li>
      <li><a href="DonorRegistration.jsp" title="Register as a Donor">Donor Registration</a></li>
      <li><a href="Login.jsp" title="Donor Login">Donor Login</a></li>
      <li><a href="#" title="Why Donates & Who Needs Blood">Why Donates,Who Needs</a></li>
      <li><a href="#" title="Am i Eligible for Donation ?">Am I Eligible</a></li>
      <li><a href="#" title="About">About</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
    <h1 id="pageID">Donor Registration</h1>
    <div id="mainArticle">
    
    
    
      <div id="contact">
        <form id="frmContact" name="frmContact" method="post" action="register" onsubmit="return validate()">
        
        <fieldset id="accountInfo">
         <legend><strong>Account Information</strong></legend>
         <p>
              <label for="name">Name</label>
              <input name="name" type="text" required class="text" id="name" tabindex="100"/>
            </p>
            <p>
              <label for="email">Email</label>
              <input name="email" type="text" required class="text" id="email" tabindex="110"  />
            </p>
            <p>
              <label for="password">Password</label>
              <input name="password" type="text" required class="text" id="password" tabindex="110" />
            </p>
            <p id="demo"></p>
            <p>
              <label for="confirm">Confirm Password</label>
              <input name="confirm" type="text" required class="text" id="confirm" tabindex="110" />
            </p>
        </fieldset>
        
        
          <fieldset id="contactInfo">
            <legend><strong>Contact Information</strong></legend>
            
            <p>
              <label for="phone">Phone</label>
              <input name="phone" type="text" required class="text" id="phone" tabindex="120" />
            </p>
            <p>
              <label for="address">Address</label>
              <input name="address" type="text" class="text" id="address" tabindex="130" />
            </p>
            <p>
              <label for="city">City</label>
              <input name="city" type="text" required class="text" id="city" tabindex="140" />
            </p>
            <p>
              <label for="district">District</label>
              <select name="district" id="district" required tabindex="150">
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
              <input name="pin" type="text" class="text" id="zip" tabindex="160" />
            </p>
          </fieldset>
          <fieldset id="personalInfo">
            <legend><strong>Personal Information</strong></legend>
            <p>
              <label for="gender">Gender</label>
              <input type="radio" name="gender" checked="checked" value="male"/>Male
			  <input type="radio" name="gender" value="female"/>Female</p>
			  
			  <p>
              <label for="dob">Date Of Birth</label>
              <input name="dob" type="text" required id="dob" tabindex="160" />
            </p>
            <p>
              <label for="height">Height</label>
              <input name="height" type="text"  id="height" tabindex="160" />
            </p>
             <p>
              <label for="weight">Weight</label>
              <input name="weight" type="text"  id="weight" tabindex="160" />
            </p>
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
              <input type="submit"  name="submit" id="submit" value="Submit" tabindex="300" />
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