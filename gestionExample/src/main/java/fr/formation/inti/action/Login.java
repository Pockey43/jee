package fr.formation.inti.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionSupport;

import fr.formation.inti.model.MessageStore;




public class Login extends ActionSupport{
	private final static Log log = LogFactory.getLog(Login.class);
	private MessageStore messageStore;
	private Personne personne;
	
	
	@Override
	public String execute() throws Exception {
		log.debug("---------------------execute action hellostruts");
//		if (messageStore.getName() != null)
//			log.debug("----- name : "+ messageStore.getName());

		
		return "success";
	}
	

	
	
	public MessageStore getMessageStore() {
		return messageStore;
	}



	public void setMessageStore(MessageStore messageStore) {
		this.messageStore = messageStore;
	}



	public Personne getPersonne() {
		return personne;
	}



	public void setPersonne(Personne personne) {
		this.personne = personne;
	}
	
	public void validate() {
	      if (personne.getFirstName() == null || "".equals(personne.getFirstName().trim())) {
	         addFieldError("personne.firstName",getText("global.firstName_required"));
	      }
	      if (personne.getLastName() == null || personne.getLastName().trim().equals("")) {
		         addFieldError("personne.lastName",getText("global.lastName_required"));
		      }
	      
	      if (personne.getAge() < 7 || personne.getAge() > 77) {
	         addFieldError("personne.age",getText("global.age_required"));
	      }
	   }
	
	

}
