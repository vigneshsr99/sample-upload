<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updating expenses</title>
</head>
<body>
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
    <h1 align ="center">Update Expense</h1>
        <div  >
            <br>
            <form action="/save" method="post" >
            	No :&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                <input type="text" name="no" value="${expenses.no}" readonly="readonly"><br><br>
                name of the expense :&emsp;
                <input type ="text" name = "name" value="${expenses.name}"><br><br>
                cost of the expense :&emsp;&ensp;
                <input type="number" name = "expense" value="${expenses.expense}"><br><br>
                quantity of the expense :
                <input type="text" name = "quantity" value="${expenses.quantity}"><br><br>
                <input type="submit" value="update"><br><br>
                
</form>
</div>
</body>
</html>