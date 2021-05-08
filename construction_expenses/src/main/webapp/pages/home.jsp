<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<style>
    div {
        border: 1px solid#000;
        border-radius: 20px;
        width :40%;
        text-align: center;
        margin-left: 30%;
    }
</style>
<body>
    <h1 align ="center">Add Expense</h1>
        <div  >
            <br>
            <form action="uploadExpenses" method="post">
                name of the expense :&emsp;
                <input type="text" name = "name" required><br><br>
                cost of the expense :&nbsp;&emsp;&nbsp;
                <input type="number" name = "expense" required><br><br>
                quantity of the expense :
                <input type="text" name = "quantity" required><br><br>
                <input type="submit" value ="upload expenses"><br>
                <br>
</form>
</div>

<h3 align="center"><a href= "http://localhost:8080/getExpenses" target="blank" > list of expenses</a><h3>