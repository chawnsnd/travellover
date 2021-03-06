package attraction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.CrudService;
import mvc.command.CommandHandler;
import util.ImageUploader;

public class ModifyHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/WEB-INF/view/attraction/modifyForm.jsp";
	private static final String SUCCESS_VIEW = "/WEB-INF/view/attraction/modifySuccess.jsp";
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
		int attractionId = Integer.parseInt(req.getParameter("attraction_id"));
		try{
			Attraction attraction = crudService.read(attractionId);
			req.setAttribute("attraction", attraction);
			String phone[] = attraction.getPhone().split("-");
			req.setAttribute("phone", phone);
			return FORM_VIEW;
		}catch(Exception e){
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res){
		Attraction attraction = ImageUploader.upload(new Attraction(), req);
		try{
			crudService.modify(attraction);
			req.setAttribute("attraction", attraction);
			return SUCCESS_VIEW;
		}catch(Exception e){
			req.setAttribute("exception", e);
			return ERROR_VIEW;
		}
	}

}