package user.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.dao.UserDao;
import user.model.User;

public class JoinService {
	
	private UserDao userDao = new UserDao();
	
	public void join(JoinRequest joinReq){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			User user = userDao.selectByEmail(conn, joinReq.getEmail());
			if(user!=null){
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			
			userDao.insert(conn,
					new User(
							joinReq.getEmail(),
							joinReq.getNickname(),
							joinReq.getPassword(),
							new Date())
					);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}

}