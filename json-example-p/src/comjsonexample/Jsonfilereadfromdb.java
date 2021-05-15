/**
 * 
 */
package comjsonexample;

import java.sql.Statement;

import java.util.*;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * @author NIVETHITHA
 *
 */
public class Jsonfilereadfromdb {
	
	public static ResultSet RetrieveData() throws Exception {
	      //Registering the Driver
	      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	      //Getting the connection
	
	      String mysqlUrl = "jdbc:mysql://localhost:3306/userdb";
	      Connection con = DriverManager.getConnection(mysqlUrl, "root", "Nivi@2695");
	      System.out.println("Connection established......");
	      //Creating the Statement
	      Statement stmt = con.createStatement();
	      //Retrieving the records
	      ResultSet rs = stmt.executeQuery("Select * from member");
	      return rs;
	   }
	   public static void main(String args[]) throws Exception {
	      //Creating a JSONObject object
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
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      System.out.println("JSON file created......");
	   }


}
