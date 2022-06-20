import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.io.FileWriter;
import java.io.IOException;

public class WriteJSONTest {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
        JSONObject employeeDetails = new JSONObject();
        employeeDetails.put("firstName", "Dang");
        employeeDetails.put("lastName", "Kim Thi");
        employeeDetails.put("website", "codelean.vn");

        JSONObject emJsonObject = new JSONObject();
        emJsonObject.put("employee", employeeDetails);

        JSONObject employeeDetails2 = new JSONObject();
        employeeDetails2.put("firstName", "Code");
        employeeDetails2.put("lastName", "Lean");
        employeeDetails2.put("website", "codelean.com");

        JSONObject emJsonObject2 = new JSONObject();
        emJsonObject2.put("employee", employeeDetails2);
        JSONArray employeeList = new JSONArray();
        employeeList.add(emJsonObject);
        employeeList.add(emJsonObject2);

        try(
                FileWriter file = new FileWriter("employees.json")){
            file.write(employeeList.toJSONString());
            file.flush();

        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
