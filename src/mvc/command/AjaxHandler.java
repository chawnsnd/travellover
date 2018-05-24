package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

public interface AjaxHandler {
	public JSONArray process(HttpServletRequest req, HttpServletResponse res) throws Exception;
}