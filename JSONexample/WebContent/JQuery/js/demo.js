$(document).ready(function(){
  $("button").click(function(){
    $.get("demo_test.txt", function(data){
      alert(data);
    });
  });
});/**
 * 
 */