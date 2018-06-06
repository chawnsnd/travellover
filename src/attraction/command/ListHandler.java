package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.PagingAttractions;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class ListHandler implements CommandHandler{
	
	private static final String LIST_VIEW = "/WEB-INF/view/attraction/list.jsp";
	private static final String ERROR_VIEW = "/WEB-INF/view/error.jsp";
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		
		String region = req.getParameter("region");
		String category = req.getParameter("category");
		String search = req.getParameter("search");
		int page = Integer.parseInt(req.getParameter("page"));
		PagingAttractions pagingAttractions = new PagingAttractions();
		
		try {
			pagingAttractions = crudService.list(region, category, page, search);
			req.setAttribute("attractions", pagingAttractions.getAttractions());
			req.setAttribute("pagination", pagingAttractions.getPagination());
			return LIST_VIEW;
		}catch(Exception e) {
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}
}