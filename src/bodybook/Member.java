package bodybook;

public class Member {
	private String name_family, name_given;
	private String email;
	private String password;
	private String birth;
	private String gender;
	

	public Member(String name_family, String name_given, String email, String password, String birth) {
		super();
		this.name_family = name_family;
		this.name_given = name_given;
		this.email = email;
		this.password = password;
		this.birth = birth;
	}
	
	public Member() {}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName_family() {
		return name_family;
	}
	public void setName_family(String name_family) {
		this.name_family = name_family;
	}
	public String getName_given() {
		return name_given;
	}
	public void setName_given(String name_given) {
		this.name_given = name_given;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

}
