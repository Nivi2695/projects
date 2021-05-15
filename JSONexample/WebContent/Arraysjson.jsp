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
var myObj, x;
myObj = {
  "name":"John",
  "age":30,
  "cars":[ "Ford", "BMW", "Fiat" ]
};
//x = myObj.cars[0];
//for (i = 0; i < myObj.cars.length; i++)//using for loop
for(i in myObj.cars)
	{
x=myObj.cars[i];
document.getElementById("demo").innerHTML += x +" <br> ";
	}
</script>

</body>
</html>