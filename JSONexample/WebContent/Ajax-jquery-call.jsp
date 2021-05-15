<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="JQuery/js/jquery-3.1.1.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	  $("#btn1").click(function(){
	   // alert("Result: " + $("#text1").val());
	   var fullname=$('#text1').val();
	     $.ajax({
			type:'POST',
			data:{
				fullname: fullname,
				action:'demo1'
				},
			url:'Ajaxservlet',
	       
	        success: function(responseText)
	        {
	        	$('#result1').text(responseText);
	        }
	  }); 
	  });
	  });
	  
	  $(document).ready(function(){
		  $("#btnsum").click(function(){
			  var num1=$("#num1").val();
			  var num2=$("#num2").val();
			  $.ajax({
				  type:'POST',
				  data:{
					  number1:num1,
					  number2:num2,
					  action:'demo2'
				  },
				  url:'Ajaxservlet',
				  success: function(responseText)
				  {
					  $('#result2').text(responseText);
				  }
				   });
			  });
		});
			 
		


</script>
</head>
<body>

<fieldset>

<legend>demo 1</legend>


Enter Name:<input type="text" id="text1">

<input type="button" id="btn1" value="Hello"><br>
<span id="result1"></span>
</fieldset>
<fieldset>
<legend>demo 2</legend>


Enter First Number:<br><input type="text" id="num1"><br>
Enter Second Number:<br><input type="text" id="num2"><br>
Result:<span id="result2"></span><br>
<input type="button" id="btnsum" value="SUM">

</fieldset>
</body>
</html>




