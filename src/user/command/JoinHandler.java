package user.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.service.DuplicateEmailException;
import user.service.DuplicateNicknameException;
import user.service.JoinRequest;
import user.service.JoinService;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/WEB-INF/view/user/joinForm.jsp";
	private static final String SUCCESS_VIEW = "/WEB-INF/view/user/joinSuccess.jsp";
	
	private JoinService joinService = new JoinService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		if(req.getMethod().equalsIgnoreCase("GET")){
			return processForm(req, res);
		} else if(req.getMethod().equalsIgnoreCase("POST")){
			return processSubmit(req, res);
		} else{
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res){
		return FORM_VIEW;
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res){
		JoinRequest joinReq = new JoinRequest();
		joinReq.setEmail(req.getParameter("email"));
		joinReq.setNickname(req.getParameter("nickname"));
		joinReq.setPassword(req.getParameter("password"));
		joinReq.setConfirmPassword(req.getParameter("confirmPassword"));
		
		Map<String,Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		joinReq.validate(errors);
		
		if(!errors.isEmpty()){
			return FORM_VIEW;
		}
		try{
			joinService.join(joinReq);
			return SUCCESS_VIEW;
		}catch(DuplicateEmailException e){
			errors.put("duplicateId", Boolean.TRUE);
			return FORM_VIEW;
		}catch(DuplicateNicknameException e) {
			errors.put("duplicateEmail", Boolean.TRUE);
			return FORM_VIEW;
		}
	}

}