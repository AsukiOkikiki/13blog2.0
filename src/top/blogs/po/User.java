package top.blogs.po;

public class User {
	private int uid;
	private String uname;
	private String username;
	private String password;
	private String email;
	private String registerTime;
	private String sex;
	private String phone;
	private String qq;

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}

	public User(String uname, String username, String password, String email, String registerTime, String sex,
			String phone, String qq) {
		this.uname = uname;
		this.username = username;
		this.password = password;
		this.email = email;
		this.registerTime = registerTime;
		this.sex = sex;
		this.phone = phone;
		this.qq = qq;
	}

	public User() {
	}

	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", registerTime=" + registerTime + ", sex=" + sex + ", phone=" + phone + ", qq="
				+ qq + "]";
	}

}
