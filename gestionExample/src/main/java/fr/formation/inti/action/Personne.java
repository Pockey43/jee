package fr.formation.inti.action;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;

public class Personne { 
	private List<String> genders;
	
	
	private String genre;
	private String firstName;
	private String lastName;
	private String title;
	private int age;
	private Date date;
	
	
	
	public Personne() {
		genders=new ArrayList<String>();
		genders = new ArrayList<String>();
		genders.add("Male");
		genders.add("Female");
		genders.add("Unknown");
	}
		
		
		
	public String getFirstName() {
		return firstName;
	}
	
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	@Override
	public String toString() {
		return genre+". "+firstName +" "+ lastName + ", " + title + ", is " + age
				+ " and started on " + date ;
	}



	public List<String> getGenders() {
		return genders;
	}



	public void setGenders(List<String> genders) {
		this.genders = genders;
	}
	
	
	
	
	
	
	
	

}
