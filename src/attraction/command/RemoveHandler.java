package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class RemoveHandler implements CommandHandler{
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
		try{
			crudService.remove(attraction);
			return "/WEB-INF/view/attraction/list.jsp";
		}catch(Exception e){
			return "/WEB-INF/view/attraction/detail.jsp";
		}
	}

}