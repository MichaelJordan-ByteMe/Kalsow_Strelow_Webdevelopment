<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String name = request.getParameter("name");
int rows = Integer.parseInt(request.getParameter("rows"));
int columns = Integer.parseInt(request.getParameter("columns"));

if (rows <= 0)
	response.sendRedirect("classexercise.jsp?Error=1&AnotherParam=" + name);
else if(columns <= 0)
	response.sendRedirect("classexercise.jsp?Error=2&AnotherParam=" + name);
%>
<html>
<head><meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><title>createtable</title></head><body style="color: white; background-color: black;" alink="#000099" link="#000099" vlink="#990099"><%out.println("Hello " + name);%>. Here is your table<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
  <tbody>

    	<% 
    	for(int i = 1; i<=rows; i++)
    	{
    		out.print("<tr>");
    		for (int j = 1; j <= columns; j++){
    			out.print("<td style=\"vertical-align: top;\">" + i + ", " + j + "</td>");
    		}
    		out.print("</tr>");
    		
    	}
    	%>
  </tbody>
</table>
<br>


</body>
</html>