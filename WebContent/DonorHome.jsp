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
      <!-- <li><a href="myMessages" title="Messages">Messages</a></li> -->
      <li><a href="MyAccount.jsp" title="My Account">My Account</a></li>
      <li><a href="Logout" title="Logout">Logout</a></li>
    </ul>
  </div>
  
  
  <div id="mainContent">
     <%
  		List<Donor> donorList=(List)session.getAttribute("donorDetails");
     	for(Donor d:donorList){
	  %>
  <h1 id="pageID">Welcome <%=d.getName()%></h1>
    <div id="mainArticle">
    
    <div id="mainArticle">
      <div id="donorInfo">
         <table id="donorDetails">
     		<tr>
     			<td>
              		<label for="name">Name</label>
             	</td>
             	<td>
              		<input name="name" type="text" readonly value="<%=d.getName()%>" class="text" id="name2" tabindex="100"/>
             	</td>
             </tr>
             
             <tr>
     			<td>
              		<label for="gender">Gender</label>
             	</td>
             	<td>
              		<input name="gender" type="text" readonly value="<%=d.getGender()%>" class="text" id="gender" tabindex="160" />
             	</td>
             </tr>
             	
           	<tr>
           		<td>
             		<label for="email">Email</label>
             	</td>
             	<td>
              		<input name="email" type="text" readonly value="<%=d.getEmail()%>" class="text" id="email" tabindex="110"  />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		<label for="phone">Phone</label>
              	</td>
              	<td>
              		<input name="phone" type="text" readonly value="<%=d.getPhone()%>"  class="text" id="phone" tabindex="120" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		<label for="address">Address</label>
              	</td>
              	<td>
              		<input name="address" type="text" readonly value="<%=d.getAddress()%>" class="text" id="address" tabindex="130" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		<label for="city">City</label>
              	</td>
              	<td>
              		<input name="city" type="text" readonly value="<%=d.getCity()%>" class="text" id="city" tabindex="140" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		<label for="district">District</label>
              	</td>
              	<td>
              		 <input name="district" type="text" readonly value="<%=d.getDistrict()%>" class="text" id="district" tabindex="140" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		 <label for="pin">Pin Code</label>
              	</td>
              	<td>
              		 <input name="pin" type="text" readonly value="<%=d.getPin()%>" class="text" id="zip" tabindex="160" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		  <label for="dob">Date Of Birth</label>
              	</td>
              	<td>
              		  <input name="dob" type="text" readonly value="<%=d.getDob()%>" id="dob" tabindex="160" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		  <label for="height">Height</label>
              	</td>
              	<td>
              		  <input name="height" type="text" readonly value="<%=d.getHeight()%>"  id="height" tabindex="160" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		  <label for="weight">Weight</label>
              	</td>
              	<td>
              		  <input name="weight" type="text" readonly value="<%=d.getWeight()%>"  id="weight" tabindex="160" />
          		</td>
          	</tr>
          	
          	<tr>
          		<td>
              		  <label for="bloodgroup">Blood Group</label>
              	</td>
              	<td>
              		 <input name="bloodgroup" type="text" readonly value="<%=d.getBloodgroup()%>"  id="weight" tabindex="160" />
          		</td>
          	</tr>
          	 
            </table>
        <p>&nbsp;</p>
      </div>
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