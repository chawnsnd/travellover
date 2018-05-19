package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;

public class PostHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "WEB-INF/view/attraction/postForm.jsp";
	private CrudService crudService = new CrudService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res){
		if(req.getMethod().equalsIgnoreCase("GET")){
			return processForm(req, res);
		} else if(req.getMethod().equalsIgnoreCase("POST")){
			return processSubmit(req, res);
		} else{
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res){
		return FORM_VIEW;
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res){
		Attraction attraction = new Attraction();
		attraction.setName(req.getParameter("name"));
		attraction.setAddress(req.getParameter("address"));
		attraction.setPhone(req.getParameter("phone"));
		attraction.setContent(req.getParameter("content"));
		attraction.setCategory(req.getParameter("category"));
		
		
		try{
			crudService.post(attraction);
			req.setAttribute("attraction", attraction);
			return "WEB-INF/view/attraction/detail.jsp";
		}catch(Exception e){
			return FORM_VIEW;
		}
	}

}