package fr.formation.inti.service;

import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Service;

import fr.formation.inti.config.AppConfiguration;
import fr.formation.inti.dao.IUserDao;
import fr.formation.inti.entity.User;

@Service("userServ")
@Transactional
public class UserService implements IUserService{
	private final Log log = LogFactory.getLog(UserService.class);
	
	@Autowired
	private IUserDao dao ;
	
	public UserService() {
		log.info("-----------> create new UserService()");
	}

	public User findByLoginAndPassword(String login, String password) {

		
		return dao.findByLoginAndPassword(login, password);
	}

	public Integer ajouterUser(User user) {

		return dao.save(user);
	}
	
	public static void main(String[] args) {
		ConfigurableApplicationContext context = new AnnotationConfigApplicationContext(AppConfiguration.class); //passage par annotation
//		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml"); // passage
																												// par
																												// fichier
																												// xml
		IUserService service = context.getBean("userServ", UserService.class);
		
		User user = service.findByLoginAndPassword("bapt", "dep");
		System.out.println(user);
	}

}
