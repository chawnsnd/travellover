package comment.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attraction.model.Attraction;
import auth.service.AuthUser;
import comment.dao.CommentDao;
import comment.model.Comment;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import mvc.command.AjaxHandler;
import net.sf.json.JSONArray;
import user.model.User;

public class PostHandler implements AjaxHandler{
	private CommentDao commentDao;
	private Comment comment;
	private Connection conn;
	
	@Override
	public JSONArray process(HttpServletRequest req, HttpServletResponse res){
		JSONArray result = null;
		try{
			conn = ConnectionProvider.getConnection();
			commentDao = new CommentDao();

			AuthUser authUser = (AuthUser)req.getSession().getAttribute("authUser");
			
			User user = new User();
			user.setEmail(authUser.getEmail());
			user.setNickname(authUser.getNickname());
			user.setStatus(authUser.getStatus());
			
			Attraction attraction = new Attraction();
			attraction.setAttractionId(Integer.parseInt(req.getParameter("attraction_id")));
			comment = new Comment();
			comment.setAttraction(attraction);
			comment.setContent(req.getParameter("content"));
			comment.setUser(user);
			
			commentDao.insert(conn, comment);
			
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