<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="org.json.simple.JSONObject"%>
   <%@page import="org.json.simple.JSONArray"%>
    <%@page import="org.json.simple.parser.JSONParser"%>
     <%@page import=" java.io.FileReader"%>
     <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

 JSONParser parser = new JSONParser();
try {
   Object obj = parser.parse(new FileReader("C:/Users/NIVETHITHA/Documents/json/data.json"));
   JSONObject jsonObject = (JSONObject)obj;
   String fname = (String)jsonObject.get("firstName");
   String lname= (String)jsonObject.get("lastName");
   String gender= (String)jsonObject.get("gender");
   JSONArray phonenumbers = (JSONArray)jsonObject.get("phoneNumbers");
   
   out.println("Frist Name: " + fname);
   out.println("Last Name: " + lname);
   out.println("Gender: " + gender);
   out.println("Contacr Number:");
  
    Iterator iterator = phonenumbers.iterator();
   while (iterator.hasNext()) {
     out.println(iterator.next());
   } 
} catch(Exception e) {
   e.printStackTrace();
}
%>
</body>
</html>