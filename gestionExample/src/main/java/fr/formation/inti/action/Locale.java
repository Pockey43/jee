package fr.formation.inti.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionSupport;

public class Locale extends ActionSupport {
	
	private static final Log log=LogFactory.getLog(Locale.class);
   
	
	public String execute1() throws Exception{
		log.debug("---------------------execute action locale");
       return "success";
   }
	
	public String execute2() throws Exception{
		log.debug("---------------------execute action locale");
       return "success";
   }
}