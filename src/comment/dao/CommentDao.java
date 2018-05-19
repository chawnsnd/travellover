package comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import attraction.model.Attraction;
import comment.model.Comment;
import jdbc.JdbcUtil;
import user.dao.UserDao;
import user.model.User;
import util.DateParser;

public class CommentDao {
	public List<Comment> selectByAttraction(Connection conn, Attraction attraction) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			UserDao userDao =new UserDao();
			pstmt = conn.prepareStatement(
					"select * from comment where attraction_id = ?");
			pstmt.setInt(1,  attraction.getAttractionId());
			rs = pstmt.executeQuery();
			List<Comment> comments = null;
			while(rs.next()){
				User user = userDao.selectByEmail(conn, rs.getString("user_email"));
				Comment comment = new Comment(rs.getInt("comment_id"),
						attraction,
						user,
						rs.getString("content"),
						DateParser.toDate(rs.getTimestamp("moddate")),
						rs.getString("state"));
				comments.add(comment);
			}
			return comments;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
