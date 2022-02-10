package fr.formation.inti.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.inti.dto.EmployeeRegister;
import fr.formation.inti.entity.Employee;
import fr.formation.inti.entity.User;
import fr.formation.inti.service.IEmployeeService;
import fr.formation.inti.service.IUserService;

@Controller
public class LoginController {
	
	@Autowired
	IUserService uservice;
	
	@Autowired
	IEmployeeService eservice;
	

	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String login(Model model) {
		
		
		return "login";
	}
	
	
	@RequestMapping(value = {"/login1"}, method = RequestMethod.GET)
	public String login1(Model model, HttpServletRequest request) {
		User user=(User) request.getSession().getAttribute("user");
		Employee employee=(Employee) request.getSession().getAttribute("emp");
		model.addAttribute("user", user);
		model.addAttribute("emp", employee);
		return "accueil";
	}
	
	@RequestMapping(value = {"/login1"}, method = RequestMethod.POST)
	public String login2(Model model, HttpServletRequest request) {

		return "register";
	}
	
//	@RequestMapping(value = {"/register"}, method = RequestMethod.POST)
//	public String register(Model model, HttpServletRequest request) {
//
//		return "register";
//	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String login2(Model model,@RequestParam("login") String login,@RequestParam("password") String password, HttpServletRequest request) {
		
		User user=null;
		try {
			user = uservice.findByLoginAndPassword(login, password);
		}
		
		catch(Exception nre){}
		if(user != null) {
			model.addAttribute("user", user);
			request.getSession().setAttribute("user",user);
			Employee employee= user.getEmp();
			model.addAttribute("emp", employee);
			request.getSession().setAttribute("emp",employee);
			   
			return "accueil";
		}
		model.addAttribute("message", "mauvais mdp");	
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String login3(Model model) {
		
//		model.addAttribute("user", new User("root", "123456", 3));
		return "accueil";
	}
	
//	@RequestMapping(value = {"/home2","/b"}, method = RequestMethod.GET)
//	public ModelAndView home() {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("user", new User("root2", "123456", 3));
//		mv.setViewName("home");
//		return mv;
//	}

}
