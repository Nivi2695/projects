<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="org.json.simple.JSONObject"%>
   <%@page import="org.json.simple.JSONArray"%>
    <%@page import="org.json.simple.parser.JSONParser"%>
     <%@page import=" java.io.FileReader"%>
     <%@page import=" java.io.FileWriter"%>
     <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%

JSONObject jsonObject = new JSONObject();
//Inserting key-value pairs into the json object
jsonObject.put("ID", "1");
jsonObject.put("First_Name", "Shikhar");
jsonObject.put("Last_Name", "Dhawan");
jsonObject.put("Date_Of_Birth", "1981-12-05");
jsonObject.put("Place_Of_Birth", "Delhi");
jsonObject.put("Country", "India");
try {
   FileWriter file = new FileWriter("C:/Users/NIVETHITHA/Documents/json/testjson.json");
   file.write(jsonObject.toJSONString());
   file.close();
} catch (Exception e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
}
out.println("JSON file created: "+jsonObject);

%> --%>


<!-- json file write using hashmap  -->
<%
Map<String, Object> data = new HashMap<String, Object>();
data.put("ID", 1.464);
data.put("First_Name", "Nivethitha");
data.put("Last_Name", "Arulprasath");
data.put("Date_Of_Birth", "1995-11-26");
data.put("Place_Of_Birth", "vedaranyam");
data.put("Country", "India");
JSONObject jsonObject = new JSONObject(data);
try {
   FileWriter file = new FileWriter("C:/Users/NIVETHITHA/Documents/json/abcabcs.json");
   file.write(jsonObject.toJSONString());
   file.close();
} catch (Exception e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
}
out.println("JSON file created: "+jsonObject);

%>

</body>
</html> 