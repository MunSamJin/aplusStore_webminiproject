package dto;

public class UserDTO {
<<<<<<< HEAD
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
=======
	private String id;
	private String pwd;
	private String name;
	private String addr;
	private String phone;

	public UserDTO() {}
	public UserDTO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	public UserDTO(String id, String pwd, String addr, String phone) {
		this(id, pwd);
		this.addr = addr;
		this.phone = phone;
	}
	public UserDTO(String id, String pwd, String name, String addr, String phone) {
		this(id, pwd, addr, phone);
>>>>>>> merge221027
		this.name = name;
	}
	

<<<<<<< HEAD
	public String getEmailId() {
		return emailId;
	}
	
	public void setEmailId(String id) {
		this.emailId = emailId;
=======
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
>>>>>>> merge221027
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
