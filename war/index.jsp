<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="twitter4j.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Twitter Miner</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
<div class="container">
		<h3><i class="fa fa-twitter-square"></i>  Twitter Miner</h3>
		<br>
		<%Cookie[] cookies = request.getCookies();
		  if(cookies != null) {
		      for (int i = 0; i < cookies.length; i++) {
		    	  Cookie cookie=cookies[i];
		          String cookieName = cookie.getName();
		          if(cookieName.equals("userName")){
		          %>        	  
				<a href="/mineTweet?userName=<%=cookie.getValue()%>"><input type="submit" class="btn  btn-success"
				value="Show tweets for <%=cookie.getValue()%>" style="border-radius:50px;"></a>
				
		</form>
		          <%}else{%>
		        	
		        	  <%
		          }
		       }
		   } %>
		<br><br>
		<form action="mineTweet" method="get">
			<input type="text" class="form-control"
				placeholder="Enter twitter user name (eg thepurplestem)" name="userName"> 
				<br>
				<div style="text-align:center;">
				<button type="submit" class="btn btn-primary" style="width:100px;border-radius:50px;"><i class="fa fa-twitter fa-3x"></i> </button>
				</div>
		</form>
	</div>
</body>
</html>