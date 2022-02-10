package fr.formation.inti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.inti.entity.User;



@Controller
public class IndexController {
	

	@RequestMapping(value = {"/index"}, method = RequestMethod.GET)
	public String index(Model model) {
		
		return "login";
	}

}
