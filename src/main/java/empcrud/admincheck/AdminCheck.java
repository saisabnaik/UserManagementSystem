package empcrud.admincheck;

public class AdminCheck {
	private String name;
	private String password;
	public AdminCheck() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminCheck(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	@Override
	public String toString() {
		return "AdminCheck [name=" + name + ", password=" + password + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
