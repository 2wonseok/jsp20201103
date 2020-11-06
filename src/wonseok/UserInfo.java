package wonseok;

public class UserInfo {
	private String email;
	private String name;
	private String gender;
	private String area;
	
	
	
	public UserInfo(String email, String name, String gender, String area) {
		super();
		this.email = email;
		this.name = name;
		this.gender = gender;
		this.area = area;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	
}
