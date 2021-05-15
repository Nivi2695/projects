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
var obj, dbParam, xmlhttp, myObj, x, txt = "";
obj = { table: "customers", limit: 4 };
dbParam = JSON.stringify(obj);
xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() 
{
  if (this.readyState == 4 && this.status == 200) 
  {
    myObj = JSON.parse(this.responseText);
    txt += "<table border='1'>"
    for (x in myObj) 
    {
      txt += "<tr><td>" + myObj[x].name + "</td></tr>";
    }
    txt += "</table>"    
    document.getElementById("demo").innerHTML = txt;
  }
};
xmlhttp.open("POST", "json_demo.txt", true);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.send("x=" + dbParam);
</script>


</body>
</html>