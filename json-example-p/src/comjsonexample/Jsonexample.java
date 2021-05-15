package comjsonexample;

import java.io.FileReader;
import java.util.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Jsonexample {
	 public static void main(String[] args){
		JSONParser parser = new JSONParser();
	
	try {
		
	   Object obj = parser.parse(new FileReader("C:/Users/NIVETHITHA/Documents/json/data.json"));
	   JSONObject jsonObject = (JSONObject)obj;
	   String fname = (String)jsonObject.get("firstName");
	   String lname= (String)jsonObject.get("lastName");
	   String gender= (String)jsonObject.get("gender");
	 // JSONArray phonenumbers = (JSONArray)jsonObject.get("phoneNumbers");
	   
	  System.out.println("Frist Name: " + fname);
	  System. out.println("Last Name: " + lname);
	  System.out.println("Gender: " + gender);
	 // System. out.println("Contacr Number:");
	  
		
		/*
		 * Iterator iterator = phonenumbers.iterator(); while (iterator.hasNext()) {
		 * System. out.println(iterator.next()); }
		 */
	} catch(Exception e) {
	   e.printStackTrace();
	}

}
}
