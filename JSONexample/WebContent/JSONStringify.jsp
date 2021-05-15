<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<p id="demo"></p>

<script>
var obj = { name: "John", age: 30, city: "New York" };//javascript object

var myJSON = JSON.stringify(obj);//js object to JSON

document.getElementById("demo").innerHTML = myJSON;
</script>


</body>
</html>