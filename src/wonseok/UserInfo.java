package wonseok;

public class UserInfo {
	private String id;
	private String name;
	private String gender;
	private String area;
	private String pw;
	
	
	
	public UserInfo(String id, String pw, String name, String gender, String area) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.area = area;
	}
	
	public String getId() {
		return id;
	}
	public void getId(String id) {
		this.id = id;
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

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
}
