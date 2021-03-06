package user.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import auth.service.AuthUser;
import mvc.command.CommandHandler;
import user.service.InvalidPasswordException;
import user.service.LeaveService;
import user.service.UserNotFoundException;

public class LeaveHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/user/leaveForm.jsp";
	private static final String SUCCESS_VIEW = "/WEB-INF/view/user/leaveSuccess.jsp";
	
	private LeaveService leaveService = new LeaveService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception{
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
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception{
		AuthUser user = (AuthUser)req.getSession().getAttribute("authUser");
		String email = user.getEmail();
		String reqPassword = req.getParameter("password");
		
		Map<String,Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		if(reqPassword == null || reqPassword.isEmpty()){
			errors.put("password", Boolean.TRUE);
		}
		
		if(!errors.isEmpty()){
			return FORM_VIEW;
		}
		
		try{
			leaveService.leave(email, reqPassword);
			HttpSession session = req.getSession(false);
			if(session!=null){
				session.invalidate();
			}
			return SUCCESS_VIEW;
		}catch(UserNotFoundException e){
			res.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return null;
		}catch(InvalidPasswordException e) {
			errors.put("badPwd", Boolean.TRUE);
			return FORM_VIEW;
		}
	}

}
