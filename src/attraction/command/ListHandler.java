package attraction.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class ListHandler implements CommandHandler{
	
	private static final String LIST_VIEW = "/WEB-INF/view/attraction/list.jsp";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		String region = req.getParameter("region");
		String category = req.getParameter("category");
		try {
			List<Attraction> attractions = crudService.list(region, category);
			req.setAttribute("attractions", attractions);
			return LIST_VIEW;
		}catch(Exception e) {
			return LIST_VIEW;
		}
	}
}