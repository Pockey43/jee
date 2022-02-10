package fr.formation.inti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.entity.User;
import fr.formation.inti.service.IEmployeeService;

@Controller
public class HomeController {
	
	@Autowired
	private IEmployeeService service;

	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("message","SpringMVC method GET   ");
		model.addAttribute("user", new User("root", "123456", 3));
		return "home";
	}
	
	@RequestMapping(value = "/home",method = RequestMethod.POST)
	public String home2(Model model,
			@RequestParam("firstName") String nom ,
			@RequestParam("id") Integer id ) {
		model.addAttribute("message","Application SPRING MVC method post :"+nom +" "+id);
		if(id != null) {
			Employee emp = service.findById(id);
			model.addAttribute("message",emp);
		}
		return "home";
	}

	
	@RequestMapping(value = {"/home2","/b"}, method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User("root2", "123456", 3));
		mv.setViewName("home");
		return mv;
	}

}
