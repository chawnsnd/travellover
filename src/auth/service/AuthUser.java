package auth.service;

public class AuthUser {
	
	private String email;
	private String nickname;
	
	public AuthUser(String email, String nickname){
		this.email=email;
		this.nickname=nickname;
	}
	
	public String getEmail(){
		return email;
	}
	
	public String getNickName(){
		return nickname;
	}

}