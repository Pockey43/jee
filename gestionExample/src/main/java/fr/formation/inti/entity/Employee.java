package fr.formation.inti.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id")
	private int empId;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	@Column(name = "start_date")
	private Date startDate;
	
	@ManyToOne
	@JoinColumn(name = "dept_id", nullable = false)
	private Department department;

	@ManyToOne
	@JoinColumn(name = "superior_emp_id")
	private Employee manager;

	@OneToMany(mappedBy = "manager", targetEntity = Employee.class)
	private Set<Employee> subordonnees = new HashSet<Employee>();

//	public void setSubordonnées(Set<Employee> subordonnees) {
//		for (Employee e : subordonnees) {
//			addSubordonnees(e);
//		}
//	}
//	
//	public void addSubordonnees(Employee e) {
//		this.subordonnees.add(e);
//		if (e.getManager() != this) {
//			e.setManager(this);
//		}
//	}

	// Employee relation manager et subordonnées :
	// Affichage : l(igne)1 Employee -> Infos / l2 Manager -> / l3 subordo

	public Employee(String firstName, String last_Name, Date startDate) {
		super();
		this.firstName = firstName;
		this.lastName = last_Name;
		this.startDate = startDate;
	}

	public Employee getManager() {
		return manager;
	}

//	public void setManager(Employee manager) {
//		this.manager = manager;
//		if (!manager.getSubordonnees().contains(this)) {
//			manager.getSubordonnees().add(this);
//			}		
//	}

//	public Set<Employee> getSubordonnees() {
//		return subordonnees;
//	}

	

	public Set<Employee> getSubordonnees() {
		return subordonnees;
	}

	public void setSubordonnees(Set<Employee> subordonnees) {
		this.subordonnees = subordonnees;
	}

	public void setManager(Employee manager) {
		this.manager = manager;
	}

	

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date strartDate) {
		this.startDate = strartDate;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", startDate="
				+ startDate + "]";
	}

	public Employee(int empId, String firstName, String last_Name, Date strartDate) {
		super();
		this.empId = empId;
		this.firstName = firstName;
		this.lastName = last_Name;
		this.startDate = strartDate;
	}

	public Employee() {
		super();
	}

}