<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.* "%>
<%@ page import="marketing.*" %>




<!DOCTYPE html>
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
	
	<h1>Customers' Data</h1>
	<br>
	<%
	Order_DBcontrol dbc = new Order_DBcontrol();
	ArrayList<customer> cus = new ArrayList<customer>();
	cus=dbc.getcustomerData();

	%>
	
	<br>
	<br>
	
	<table id="inventorylist">
	<tr>
	<th>
	客戶ID
	</th>
	<th>
	客戶姓名
	</th>
	<th>
	RFM組別
	<th>
	上次購買日期
	</th>
	<th>
	首次購買日期
	</th>
	<th>
	累積購買次數
	</th>
	<th>
	累積購買金額
	</th>
	<th>
	性別
	</th>
	<th>
	手機
	</th>
	</tr>
	<% 
	
	

		
		for(int i=0; i<cus.size(); i++)
		{
			out.println("<tr>");
			out.println("<td align=\"center\">"+cus.get(i).c_id+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).c_name+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).rfmgrp+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).lastbuy_date+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).firstbuy_date+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).buytimes+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).beforetotalmoney+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).gender+"</td>");
			out.println("<td align=\"center\">"+cus.get(i).tel+"</td>");
			out.println("</tr>");
		}
	%>
	</table>
	
	<br>
	<br>
	<br>
	

	<form action = "MainPage.html" method="POST"  class="button" style="vertical-align:middle">
		<span><input type="submit" value="Back To Main Page" class="button" name="send"></span><br>
	</form>
	<br><br>	
	
	
	
</body>
</html>