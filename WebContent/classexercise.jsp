<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><title>classexercise.html</title></head><body>
<%

String anyErrors = request.getParameter("Error");
String name = request.getParameter("AnotherParam");
if(anyErrors!=null && anyErrors.equals("1"))
	out.println("HELLO: " + name + ", PLEASE PROVIDE A VALID ROW >=1<br>");
else if(anyErrors!=null && anyErrors.equals("2"))
	out.println("HELLO: " + name + ", PLEASE PROVIDE A VALID COLUMN >=1<br>");
%>
  
<form action="createtable.jsp" name="Form1"><input readonly="readonly" name="enterName" value="Enter your name"><input name="name"><br>
  <input readonly="readonly" name="enterRows" value="Enter number of rows"><input name="rows" value="1"><br>
  <input readonly="readonly" name="enter" value="Enter number of columns"><input name="columns" value="1"><br>
  <input name="submit" value="Submit" type="submit"><input type="reset"><br>
</form>


</body>
</html>