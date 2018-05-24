package comment.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import comment.dao.CommentDao;
import comment.model.Comment;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import mvc.command.AjaxHandler;
import net.sf.json.JSONArray;

public class ListHandler implements AjaxHandler{
	private CommentDao commentDao;
	private Connection conn;
	
	@Override
	public JSONArray process(HttpServletRequest req, HttpServletResponse res){
		JSONArray result = null;
		try{
			conn = ConnectionProvider.getConnection();
			commentDao = new CommentDao();
			Attraction attraction = new Attraction();
			attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
			List<Comment> comments = commentDao.selectByAttraction(conn, attraction);
			result = JSONArray.fromObject(comments);

		} catch(SQLException e){
			JdbcUtil.rollback(conn);
		} finally{
			JdbcUtil.close(conn);
		}
		return result;
	}
	
}
