package sports.sports_db.sports_db.controller;

import com.sports.sports_db.entity.EmployeeEntity;
import com.sports.sports_db.model.EmployeeModel;
import com.sports.sports_db.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value = "getallemployees", method = RequestMethod.GET)
    public List<EmployeeModel> getAllEmployees() {
        return employeeService.getAllEmp();
    }

    @RequestMapping(value = "addemployee", method = RequestMethod.POST)
    public String addEmployee(@RequestBody EmployeeEntity employee) {
        return employeeService.addEmployee(employee);
    }

    @RequestMapping(value = "updateemployee", method = RequestMethod.PUT)
    public String updateEmployee(@RequestBody EmployeeEntity employee) {
        return employeeService.updateEmployee(employee);
    }

    @RequestMapping(value = "deleteemployee", method = RequestMethod.DELETE)
    public String deleteEmployee(@RequestBody EmployeeEntity employee) {
        return employeeService.removeEmployee(employee);
    }
}
