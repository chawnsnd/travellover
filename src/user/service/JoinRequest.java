package user.service;

import java.util.Map;

public class JoinRequest {

	private String email;
	private String nickname;
	private String password;
	private String confirmPassword;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public boolean isPasswordEqualToConfirm(){
		return password != null&&password.equals(confirmPassword);
	}
	
	public void validate(Map<String, Boolean> errors){
		checkEmpty(errors,email,"email");
		checkEmpty(errors,nickname,"nickname");
		checkEmpty(errors,password,"password");
		checkEmpty(errors,confirmPassword,"confimPassword");
		if(!errors.containsKey("confirmPassword")){
			if(!isPasswordEqualToConfirm()){
				errors.put("notMatch", Boolean.TRUE);
			}
		}
	}
	
	public void checkEmpty(Map<String, Boolean> errors,
			String value, String fieldName){
		if(value==null||value.isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}
}