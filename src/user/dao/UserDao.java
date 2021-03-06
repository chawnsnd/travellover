package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import jdbc.JdbcUtil;
import user.model.User;
import util.DateParser;

public class UserDao {
	
	public User selectByEmail(Connection conn, String email) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(
					"select * from user where email = ?");
			pstmt.setString(1,  email);
			rs = pstmt.executeQuery();
			User user = null;
			if(rs.next()){
				user=new User(
						rs.getString("email"),
						rs.getString("nickname"),
						rs.getString("password"),
						rs.getString("status"),
						DateParser.toDate(rs.getTimestamp("regdate")));
			}
			return user;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public User selectByNickname(Connection conn, String nickname) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(
					"select * from user where nickname = ?");
			pstmt.setString(1,  nickname);
			rs = pstmt.executeQuery();
			User user = null;
			if(rs.next()){
				user=new User(
						rs.getString("email"),
						rs.getString("nickname"),
						rs.getString("password"),
						rs.getString("status"),
						DateParser.toDate(rs.getTimestamp("regdate")));
			}
			return user;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void insert(Connection conn, User user) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("insert into user(email, nickname, password, status, regdate) values(?,?,?,?,?)")){
			pstmt.setString(1, user.getEmail());
			pstmt.setString(2, user.getNickname());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getStatus());
			pstmt.setTimestamp(5, new Timestamp(user.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}
	
	public void update(Connection conn, User user) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("update user set nickname = ?, password = ? where email = ?")){
			pstmt.setString(1, user.getNickname());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getEmail());
			pstmt.executeUpdate();
		}
	}
	
	public void delete(Connection conn, User user) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("delete from user where email = ?")){
			pstmt.setString(1, user.getEmail());
			pstmt.executeUpdate();
		}
	}

}