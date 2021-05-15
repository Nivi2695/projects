<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<p id="demo"></p>

<script>
var myJSON = '{"name":"John", "age":31, "city":"New York"}';//json data 

var myObj = JSON.parse(myJSON);//json data covert into javascript object using JSON.parse()

document.getElementById("demo").innerHTML = myObj.name+"  "+myObj.age+"  "+myObj.city;
</script>
<body>

</body>
</html>