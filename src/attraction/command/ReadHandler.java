package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class ReadHandler implements CommandHandler{
	
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		try {
			Attraction attraction = crudService.read(Integer.parseInt(req.getParameter("attraction_id")));
			req.setAttribute("attraction", attraction);
			return "WEB-INF/view/attractionDetail.jsp";
		}catch(Exception e) {
			return "WEB-INF/view/attractionList.jsp";
		}
	}
	
}