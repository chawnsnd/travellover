package attraction.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.model.PagingAttractions;
import attraction.service.CrudService;
import mvc.command.CommandHandler;
import util.Pagination;

public class ListHandler implements CommandHandler{
	
	private static final String LIST_VIEW = "/WEB-INF/view/attraction/list.jsp";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		
		String region = req.getParameter("region");
		String category = req.getParameter("category");
		String stringPage = req.getParameter("page");
		int page = Integer.parseInt(req.getParameter("page"));
		try {
			PagingAttractions pagingAttractions = crudService.list(region, category, page);
			req.setAttribute("attractions", pagingAttractions.getAttractions());
			req.setAttribute("pagination", pagingAttractions.getPagination());
			return LIST_VIEW;
		}catch(Exception e) {
			return LIST_VIEW;
		}
	}
}