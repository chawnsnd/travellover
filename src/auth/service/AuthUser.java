package auth.service;

public class AuthUser {
	
	private String email;
	private String nickname;
	private String status;
	
	public AuthUser(String email, String nickname, String status){
		this.email=email;
		this.nickname=nickname;
		this.status=status;
	}
	
	public String getEmail(){
		return email;
	}
	
	public String getNickName(){
		return nickname;
	}

	public String getStatus() {
		return status;
	}

	@Override
	public String toString() {
		return "AuthUser [email=" + email + ", nickname=" + nickname + ", status=" + status + "]";
	}

}