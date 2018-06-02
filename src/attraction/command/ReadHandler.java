package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;
import sun.util.logging.resources.logging;

public class ReadHandler implements CommandHandler{
	
	
	private static final String LIST_VIEW = "/WEB-INF/view/attraction/list.jsp?page=1";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		try {
			int attractionId = Integer.parseInt(req.getParameter("attraction_id"));
			Attraction attraction = crudService.read(attractionId);
			req.setAttribute("attraction", attraction);
			return "/WEB-INF/view/attraction/detail.jsp";
		}catch(Exception e) {
			System.out.println(e.getMessage());
			return LIST_VIEW;
		}
	}
	
}