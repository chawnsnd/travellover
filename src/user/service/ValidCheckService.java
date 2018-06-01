package user.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.dao.UserDao;
import user.model.User;

public class ValidCheckService {
private UserDao userDao = new UserDao();
	
	public void checkByEmail(String email){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			User user = userDao.selectByEmail(conn, email);
			if(user!=null) {
				throw new DuplicateEmailException();
			}
		} catch(SQLException e){
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	public void checkByNickname(String nickname){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			User user = userDao.selectByNickname(conn, nickname);
			if(user!=null) {
				throw new DuplicateNicknameException();
			}
		} catch(SQLException e){
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
}
