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
		if(req.getMethod().equalsIgnoreCase("GET")){
			return processDetail(req, res);
		} else if(req.getMethod().equalsIgnoreCase("POST")){
			return processRemove(req, res);
		} else{
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processDetail(HttpServletRequest req, HttpServletResponse res){
		try {
			Attraction attraction = crudService.read(Integer.parseInt(req.getParameter("attraction_id")));
			req.setAttribute("attraction", attraction);
			return "WEB-INF/view/attractionDetail.jsp";
		}catch(Exception e) {
			return "WEB-INF/view/attractionList.jsp";
		}
	}
	private String processRemove(HttpServletRequest req, HttpServletResponse res){
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
		try{
			crudService.remove(attraction);
			return "WEB-INF/view/attractionRemoveSuccess.jsp";
		}catch(Exception e){
			return "WEB-INF/view/attractionDetail.jsp";
		}
	}

}