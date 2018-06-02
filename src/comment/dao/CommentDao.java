package comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
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
					"select * from comment where attraction_id = ? order by comment_id desc");
			pstmt.setInt(1,  attraction.getAttractionId());
			rs = pstmt.executeQuery();
			List<Comment> comments = new ArrayList<>();
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
	public Comment selectById(Connection conn, int id) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Comment comment = null;
		try{
			UserDao userDao =new UserDao();
			pstmt = conn.prepareStatement(
					"select * from comment where comment_id = ?");
			pstmt.setInt(1,  id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				User user = userDao.selectByEmail(conn, rs.getString("user_email"));
				comment = new Comment();
				comment.setCommentId(rs.getInt("comment_id"));
				comment.setUser(user);
			}
			return comment;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public void insert(Connection conn, Comment comment) throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("insert into comment(attraction_id, user_email, content) value (?, ?, ?)")) {
			pstmt.setInt(1,  comment.getAttraction().getAttractionId());
			pstmt.setString(2, comment.getUser().getEmail());
			pstmt.setString(3, comment.getContent());
			pstmt.executeUpdate();
		}
	}
	public void modify(Connection conn, Comment comment) throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("update comment set content = ? moddate = default(`moddate`) where comment_id = ?")) {
			pstmt.setString(1,  comment.getContent());
			pstmt.setInt(2, comment.getCommentId());
		}
	}
	public void delete(Connection conn, Comment comment) throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("delete from comment where comment_id = ?")) {
			pstmt.setInt(1, comment.getCommentId());
			pstmt.executeUpdate();
		}
	}
}
