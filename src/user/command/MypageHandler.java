package user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.AuthUser;
import mvc.command.CommandHandler;

public class MypageHandler implements CommandHandler{
	
	private static final String MYPAGE_VIEW = "/WEB-INF/view/user/mypage.jsp";
	private static final String ERROR_VIEW = "/WEB-INF/view/error.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		try {
			AuthUser authUser = (AuthUser)req.getSession().getAttribute("authUser");
			req.setAttribute("authUser", authUser);
			return MYPAGE_VIEW;
		}catch(Exception e) {
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}
}