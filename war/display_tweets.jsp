<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="twitter4j.*"%>
<%@ page import="javax.servlet.http.Cookie"%>
<%@ page import="javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Tweets</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<%
			int tweetCount = Integer.parseInt((String) request.getSession().getAttribute("tweetCount"));
			ArrayList<Status> tweets = (ArrayList<Status>) request.getSession().getAttribute("tweets");
		%>
		<br>
		<p>
			Total tweets:
			<%=tweetCount%>
		</p>
		<br>
		<table class="table">
			<thead>
				<tr>
					<th>S.No</th>

					<th>Tweet</th>
				</tr>
			</thead>
			<tbody>
				<%
					int count = 1;
					for (Status s : tweets) {
				%>
				<tr>
					<td><%=count%></td>
					<td><%=s.getText()%></td>
				</tr>
				<% count++;
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>