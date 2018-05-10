package user.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.dao.UserDao;
import user.model.User;

public class LeaveService {

	private UserDao userDao = new UserDao();
	
	public void leave(String email, String password){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			User user = userDao.selectByEmail(conn,email);
			if(user == null){
				throw new UserNotFoundException();
			}
			if(!user.matchPassword(password)){
				throw new InvalidPasswordException();
			}
			userDao.delete(conn, user);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
}
