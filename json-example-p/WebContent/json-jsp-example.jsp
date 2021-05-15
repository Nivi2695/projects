<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p id="demo"/>
<script type="text/javascript">

function madeAjaxCall(){
$.ajax({
type: "GET",
url: "C://Users//NIVETHITHA//Documents//json//book.json",
contentType:"application/json; charset=utf-8",
dataType:"json",
success: function(data){ 
        if(data){
            var len = data.length;
            var txt = "";
            if(len > 0){
                for(var i=0;i<len;i++){
                    if(data[i].bookId && data[i].bookName){
                        txt += "<tr><td>"+data[i].bookId+"</td><td>"+data[i].bookName+"</td></tr>";
                    }
                }
                if(txt != ""){
                    $("#table1").append(txt).removeClass("hidden");
                }
            }
        }
    },
    error: function(jqXHR, textStatus, errorThrown){
        alert('error: ' + textStatus + ': ' + errorThrown);
    }
});
return false;
});


</script>


</body>
</html>