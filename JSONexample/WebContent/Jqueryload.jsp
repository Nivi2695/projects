<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript" src="JQuery/js/jquery-3.1.1.js"></script>
<!-- <script type="text/javascript" src="JQuery/js/demo.js"></script> --><!-- you can use seperate js file also in the same folder -->
<script>
$(document).ready(function(){
	  $("button").click(function(){
	    $.get("demo_test.txt", function(data){
	      alert(data);
	    });
	  });
	});
</script>
</head>
<body>

<button>Send an HTTP GET request to a page and get the result back</button>

</body>
</html>