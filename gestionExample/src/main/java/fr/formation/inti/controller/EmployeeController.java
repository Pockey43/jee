package fr.formation.inti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.inti.dto.EmployeeRegister;
import fr.formation.inti.entity.Employee;
import fr.formation.inti.entity.User;
import fr.formation.inti.service.IEmployeeService;
import fr.formation.inti.service.IUserService;

@Controller
public class EmployeeController {
	
	@Autowired
	IUserService uservice;
	
	@Autowired
	IEmployeeService eservice;
	
	@RequestMapping(value="/register" , method = RequestMethod.GET)  
    public String display(Model model)  
    {  
        model.addAttribute("emp", new EmployeeRegister());  
        return "register";  
    }  
	@RequestMapping(value="/register" , method = RequestMethod.POST)   
    public String submitForm( @Valid @ModelAttribute("emp") EmployeeRegister emp, BindingResult br,HttpServletRequest request)  
    {  
		request.getSession().setAttribute("emp",emp);
        if(br.hasErrors())  
        {  
            return "register";  
        }  
        else  
        {  
        return "index";  
        }  
    }  
	
	@RequestMapping(value="/registersucceed" , method = RequestMethod.GET)  
    public String succeed(Model model, HttpServletRequest request)  
    { 
		EmployeeRegister emp=(EmployeeRegister) request.getSession().getAttribute("emp");
		model.addAttribute("emp", emp);
          
        return "index"; 
    }
	

	
	
}
