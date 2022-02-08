package fr.formation.inti.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import fr.formation.inti.config.AppConfiguration;
import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.IEmployeeService;

public class AppMain {
	private static final Log log = LogFactory.getLog(AppMain.class);

	public static void main(String[] args) {
		// Creating a Context Application object by reading
		// the configuration of the 'AppConfiguration' class.
		ConfigurableApplicationContext context = new AnnotationConfigApplicationContext(AppConfiguration.class); //passage par annotation
//		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml"); // passage
																												// par
																												// fichier
																												// xml
		IEmployeeService service = context.getBean("empServ", EmployeeService.class);
		//empServ, employeeDao
		List<Employee> employees = service.findAll();
		employees.forEach(log::info);

//		for (Employee e : employees)
//			log.info("-------------" + e);

		context.close();
		

	}

}
