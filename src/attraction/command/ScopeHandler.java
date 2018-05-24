package attraction.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import attraction.service.ScopeService;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import mvc.command.AjaxHandler;
import net.sf.json.JSONArray;

public class ScopeHandler implements AjaxHandler{
	private Connection conn;
	
	@Override
	public JSONArray process(HttpServletRequest req, HttpServletResponse res) {
		JSONArray result = null;
		try {
			conn = ConnectionProvider.getConnection();
			ScopeService scopeService = new ScopeService();
			Attraction attraction = new Attraction();
			attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
			scopeService.set(attraction.getAttractionId(), Float.parseFloat(req.getParameter("scope")));
			
			float scope = scopeService.get(attraction.getAttractionId());
			
			result = JSONArray.fromObject(scope);
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
		} finally{
			JdbcUtil.close(conn);
		}
		return result;
	}
}
