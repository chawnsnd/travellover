package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class ReadHandler implements CommandHandler{
	
	private static final String DETAIL_VIEW = "/WEB-INF/view/attraction/detail.jsp";
	private static final String ERROR_VIEW = "/WEB-INF/view/error.jsp";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		try {
			int attractionId = Integer.parseInt(req.getParameter("attraction_id"));
			Attraction attraction = crudService.read(attractionId);
			req.setAttribute("attraction", attraction);
			return DETAIL_VIEW;
		}catch(Exception e) {
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}
	
}