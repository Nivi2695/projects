package comjsonexample;

import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;

public class Writejson {
	
	public static void main(String args[])
	{
		Map<String, String> data = new HashMap<String, String>();
		data.put("ID", "1");
		data.put("First_Name", "Nivethitha");
		data.put("Last_Name", "Arulprasath");
		data.put("Date_Of_Birth", "1995-11-26");
		data.put("Place_Of_Birth", "vedaranyam");
		data.put("Country", "India");
		JSONObject jsonObject = new JSONObject(data);
		try {
		   FileWriter file = new FileWriter("C:/Users/NIVETHITHA/Documents/json/model.json");
		   file.write(jsonObject.toJSONString());
		   file.close();
		} catch (Exception e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		}
		System.out.println("JSON file created: "+jsonObject);
	}

}
