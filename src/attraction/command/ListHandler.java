package attraction.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class ListHandler implements CommandHandler{
	
	private static final String LIST_VIEW = "/WEB-INF/view/attraction/list.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		return LIST_VIEW;
	}
	
}