package fr.formation.inti.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "fr.formation.inti.service", "fr.formation.inti.dao" }) // ou juste @ComponentScan({
																						// "fr.formation.inti" })
public class AppConfiguration {

}