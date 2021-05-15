<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="JQuery/js/jquery-3.1.1.js"></script>
<script>
$(document).ready(function(){
  $("#btn1").click(function(){
    alert("Text: " + $("#text1").val());
  });
  $("#btn2").click(function(){
    alert("HTML: " + $("#text1").html());
  });
});
</script>
</head>
<body>

<p id="test">This is some <b>bold</b> text in a paragraph.</p>
Enter Name:<input type="text" id="text1">

<button id="btn1">Show Text</button>
<button id="btn2">Show HTML</button>


</body>
</html> 