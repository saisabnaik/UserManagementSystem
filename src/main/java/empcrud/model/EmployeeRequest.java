package empcrud.model;



public class EmployeeRequest {

	private int id;
	private String name;
	private String email;
	private String phno;
	private String gender;
	private long salary;
	private String dob;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getSalary() {
		return salary;
	}
	public void setSalary(long salary) {
		this.salary = salary;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	@Override
	public String toString() {
		return "EmployeeRequest [id=" + id + ", name=" + name + ", email=" + email + ", phno=" + phno + ", gender="
				+ gender + ", salary=" + salary + ", dob=" + dob + "]";
	}
}
