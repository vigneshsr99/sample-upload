<%@page import="jdk.internal.org.objectweb.asm.commons.ModuleTargetAttribute"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of expenses</title>
</head>
<body>
<div align ="center" position: "absolute">
<table border="1">
	<thead >
	 <td>no</td>
	 <td>name</td>
	 <td>expense</td>
	 <td>quantity</td>
	 
	</thead>
<h1 align="center" >LIST OF EXPENSES</h1>
<a align="center" href="/">Add expense</a><br><br>
 <c:forEach var="expense"  items="${Expenses}">
 <tr>
 	<td>${expense.no}</td>
 	<td>${expense.name}</td>
 	<td>${expense.expense}</td>
 	<td>${expense.quantity}</td>
 	<td><a href="updateExpenses/${expense.no}"><img src="UPDATE IMAGE.jpg" width="50px"></a></td>
 	<td><a href="deleteExpenses/${expense.no}"><img src="delete image.jpg" width="50px"></a></td>
 </tr>
 </c:forEach>
 </table>
</div>
</body>
</html>