package dto;

public class UserDTO {
	private String emailId;
	private String phone;
	private String pwd;
	private String name;
	private String addr;

	public UserDTO() {}
	public UserDTO(String emailId, String pwd) {
		this.emailId = emailId;
		this.pwd = pwd;
	}
	public UserDTO(String emailId, String pwd, String addr, String phone) {
		this(emailId, pwd);
		this.addr = addr;
		this.phone = phone;
	}
	public UserDTO(String emailId, String pwd, String name, String addr, String phone) {
		this(emailId, pwd, addr, phone);
		this.name = name;
	}
	

	public String getEmailId() {
		return emailId;
	}
	
	public void setEmailId(String id) {
		this.emailId = emailId;
	}
	
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	
	
	
	
	
	
}
