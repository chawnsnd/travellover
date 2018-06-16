package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;
import util.ImageUploader;

public class PostHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/WEB-INF/view/attraction/postForm.jsp";
	private static final String SUCCESS_VIEW = "/WEB-INF/view/attraction/postSuccess.jsp";
	private static final String ERROR_VIEW = "/WEB-INF/view/error.jsp";
	
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
		Attraction newAttraction = new Attraction();
		Attraction attraction = ImageUploader.upload(newAttraction, req);
		try{
			crudService.post(attraction);
			req.setAttribute("attraction", attraction);
			return SUCCESS_VIEW;
		}catch(Exception e){
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}

}