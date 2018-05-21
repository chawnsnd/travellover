package user.model;

import java.util.Date;

public class User {
	
	private String email;
	private String nickname;
	private String password;
	private String status;
	private Date regDate;
	
	public User(String email, String nickname, String password, String status, Date regDate){
		this.email=email;
		this.nickname=nickname;
		this.password=password;
		this.regDate=regDate;
		this.status=status;
	}
	

	public String getStatus() {
		return status;
	}


	public String getEmail() {
		return email;
	}

	public String getNickname() {
		return nickname;
	}

	public String getPassword() {
		return password;
	}

	public Date getRegDate() {
		return regDate;
	}
	
	public boolean matchPassword(String pwd){
		return password.equals(pwd);
	}
	
	public void changePassword(String newPwd){
		this.password=newPwd;
	}

}