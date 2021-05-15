<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="JQuery/js/jquery-3.1.1.js"></script>
<script>
$ (document).ready(function(){
	$("#id1").click(function()
			{
		$("p").hide();
			});
	$("#id2").click(function(){
			
		$("p").show();
	});
		
});
</script>
</head>
<body>
<p>Hi welcome JQuery</p>
<button id="id1">Hide</button>
<button id="id2">show</button>
</body>
</html>