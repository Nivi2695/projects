<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="JQuery/js/jquery-3.1.1.js"></script>
<script>//Hide the using id #test
$(document).ready(function(){
  $("button").click(function(){
    $("#test").hide();
  });
});
</script>
<!-- <script>//hide the using class .test
$(document).ready(function(){
  $("button").click(function(){
    $(".test").hide();
  });
});
</script>
</head>
<body>

<h2 class="test">This is a heading</h2>

<p class="test">This is a paragraph.</p>
<p>This is another paragraph.</p>

<button>Click me</button> -->
</head>
<body>



<p>This is a paragraph.</p>
<p id="test">This is another paragraph.</p>

<button>Click me</button>
<body>

</body>
</html>