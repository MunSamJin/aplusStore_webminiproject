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

	public UserDTO(String phone, String pwd, String addr) {
		this.pwd = pwd;
		this.phone = phone;
		this.addr = addr;
	}
	public UserDTO(String emailId,String phone, String pwd, String addr) {
		this(emailId, pwd);
		this.phone = phone;
		this.addr = addr;
	}
	public UserDTO(String emailId,String phone, String pwd, String name, String addr) {
		this(emailId, phone ,pwd, addr);
		this.name = name;
	}
	


	public String getEmailId() {
		return emailId;
	}
	
	public void setEmailId(String id) {
		this.emailId = emailId;

	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	
	
	
	
}
