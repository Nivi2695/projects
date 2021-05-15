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
var myObj, i, x = "";
myObj = {
  "name":"John",
  "age":30,
  "cars": {
  "car1":"Ford",
  "car2":"BMW",
  "car3":"Fiat"
  }
}

//myObj.cars.car2 = "Mercedes";//add and change the value of json
delete myObj.cars.car2;//delete json object

for (i in myObj.cars)
{
  x += myObj.cars[i] + "<br>";
}

document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>