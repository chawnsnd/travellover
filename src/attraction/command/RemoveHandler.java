package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class RemoveHandler implements CommandHandler{
	
	private static final String SUCCESS_VIEW = "/WEB-INF/view/attraction/deleteSuccess.jsp";
	private static final String ERROR_VIEW = "/WEB-INF/view/error.jsp";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
		try{
			crudService.remove(attraction);
			return SUCCESS_VIEW;
		}catch(Exception e){
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}

}