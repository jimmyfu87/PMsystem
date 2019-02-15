<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.* "%>
<%@ page import="marketing.*" %>
<% String name=request.getParameter("customer_name"); %>
<% String phonenumber=request.getParameter("customer_phone_no"); %>
<% String sex=request.getParameter("customer_sex"); %>
<% String date=request.getParameter("date"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customers' Data</title>

<style>

body {
  background-color: lightblue;
  font-family:monospace;
  text-align: center;
}

h1 {
  color: #4CAF50;
  text-align: center;
  font-size: 35px;
}

p {
  color: white;
  font-size: 18px;
  font-weight:bold;
}

#inventorylist {
  margin-left:auto; 
  margin-right:auto;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#inventorylist td, #inventorylist th {
  border: 1px solid #ddd;
  padding: 8px;
}

#inventorylist tr:nth-child(even){background-color: #f2f2f2;}

#inventorylist tr:hover {background-color: #ddd;}

#inventorylist th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

.button{
  background-color: #4CAF50;
  border: none;
  border-radius: 8px;
  color: white;
  padding: 6px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 22px;
  margin: 4px 2px;
  cursor: pointer;
  transition: all 0.5s;
  
  }
  
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 10px;
  right: 0px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 15px;
}

.button:hover span:after {
  opacity: 1;
  right: 25px;
  
}

</style>

</head>
<body>

<br><br><br><br><br><br><br><br><br><br>
<h1>Finish registration!!</h1>
<br>
<%
	DBcontrol dbc=new DBcontrol();
	dbc.sendData(name,sex,phonenumber,date);
	
%>
<form action = "MainPage.html" method="POST"  class="button" style="vertical-align:middle">
		<span><input type="submit" value="Back To Main Page" class="button" name="send"></span><br>
</form>

</body>
</html>