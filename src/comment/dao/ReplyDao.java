package comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import comment.model.Comment;
import comment.model.Reply;
import jdbc.JdbcUtil;
import user.dao.UserDao;
import user.model.User;
import util.DateParser;

public class ReplyDao {
	public List<Reply> selectByComment(Connection conn,Comment comment) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			UserDao userDao =new UserDao();
			pstmt = conn.prepareStatement(
					"select * from reply where comment_id = ?");
			pstmt.setInt(1,  comment.getCommentId());
			rs = pstmt.executeQuery();
			List<Reply> replys = null;
			while(rs.next()){
				User user = userDao.selectByEmail(conn, rs.getString("user_email"));
				Reply reply = new Reply(rs.getInt("reply_id"),
						comment,
						user,
						rs.getString("content"),
						DateParser.toDate(rs.getTimestamp("moddate")),
						rs.getString("state"));
				replys.add(reply);
			}
			return replys;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
