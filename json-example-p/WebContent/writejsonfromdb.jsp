<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="org.json.simple.JSONObject"%>
   <%@page import="org.json.simple.JSONArray"%>
    <%@page import="org.json.simple.parser.JSONParser"%>
     <%@page import=" java.io.FileReader"%>
     <%@page import=" java.io.FileWriter"%>
     <%@ page import ="java.sql.Statement" %>
       <%@ page import ="java.sql.ResultSet" %>
         <%@ page import ="java.sql.Connection" %>
           <%@ page import ="java.sql.DriverManager" %>
            <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	     
	
	      String mysqlUrl = "jdbc:mysql://localhost:3306/userdb";
	      Connection con = DriverManager.getConnection(mysqlUrl, "root", "Nivi@2695");
	      
	      //Creating the Statement
	      Statement stmt = con.createStatement();
	      //Retrieving the records
	      ResultSet rs = stmt.executeQuery("Select * from member");
	      return rs;
%>
<%




JSONObject jsonObject = new JSONObject();
//Creating a json array
JSONArray array = new JSONArray();
ResultSet rs = RetrieveData();
//Inserting ResutlSet data into the json object
while(rs.next()) {
 //s  JSONObject record = new JSONObject();
   //Inserting key-value pairs into the json object
   Map<String, String> record = new HashMap<String, String>();
   String id=String.valueOf(rs.getInt("id"));
   record.put("ID", id);
   record.put("User_name", rs.getString("uname"));
   record.put("Password", rs.getString("password"));
   record.put("Email", rs.getString("email"));
   record.put("Phone", rs.getString("phone"));
  
   array.add(record);
}
jsonObject.put("Players_data", array);
try {
   FileWriter file = new FileWriter("C:/Users/NIVETHITHA/Documents/json/viewjson.json");
   file.write(jsonObject.toJSONString());
   file.close();
} catch (Exception e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
}
System.out.println("JSON file created......");

%>

</body>
</html>