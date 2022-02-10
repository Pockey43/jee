package fr.formation.inti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.inti.entity.User;
import fr.formation.inti.service.IUserService;

@Controller
public class LoginController {
	
	@Autowired
	IUserService uservice;
	

	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String login(Model model) {
		
//		model.addAttribute("user", new User("root", "123456", 3));
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String login2(Model model,@RequestParam("login") String login,@RequestParam("password") String password) {
		
		

		User user = uservice.findByLoginAndPassword(login, password);
		if(user != null) {
			model.addAttribute("user", user);
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
