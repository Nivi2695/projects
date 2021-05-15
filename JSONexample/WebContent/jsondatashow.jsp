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
	$.getJSON("samplelarge.json",function(data){
		var employee_data='';
		$.each(data,function(key,value){
			employee_data+="<tr>";
			employee_data+="<td>"+value.name+"</td>";
			employee_data+="<td>"+value.address+"</td>";
			employee_data+="<td>"+value.gender+"</td>";
			employee_data+="<td>"+value.designation+"</td>";
			employee_data+="<td>"+value.mobile_number+"</td>";
			employee_data+="</tr>";
			});
		$('#employee_table').append(employee_data);
	});
	
});





</script>
</head>
<body>

<div class="container">
<div class="table-responsive">

<br>
<table class="table table-bordered table-striped" id="employee_table">

<tr>
<th>Name</th>
<th>Address</th>
<th>Gender</th>
<th>Designation</th>
<th>Mobile number</th>
</tr>
</table>
</div>
</div>

</body>
</html>



