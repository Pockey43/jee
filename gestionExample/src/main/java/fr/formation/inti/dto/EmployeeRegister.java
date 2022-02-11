package fr.formation.inti.dto;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.NumberFormat;

import fr.formation.inti.entity.Employee;



public class EmployeeRegister extends Employee {
	@Min(value=7,message="age must be between 7 and 77")
	@Max(value=77)
	@NotNull
	private Integer age;
	@NotNull
	private String email;
	@NotNull
	private String gender;
	
	@NotNull  
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}$")
	private String password;


	public Integer getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public EmployeeRegister() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeeRegister(int empId, String firstName, String last_Name, Date strartDate) {
		super(empId, firstName, last_Name, strartDate);
		// TODO Auto-generated constructor stub
	}
	public EmployeeRegister(String firstName, String last_Name, Date startDate) {
		super(firstName, last_Name, startDate);
		// TODO Auto-generated constructor stub
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Employee : <br>"+gender+". " +super.getFirstName() + " " + super.getLastName() +"<br>Age=" + age + "<br>email=" + email + "<br>Title=" + super.getTitle() + "<br>"+super.getDepartment();
	}
	
	
	

}
