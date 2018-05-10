package attraction.service;

import java.sql.Connection;
import java.sql.SQLException;

import attraction.dao.AttractionDao;
import attraction.model.Attraction;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class CrudService {
	
	private AttractionDao attractionDao = new AttractionDao();
	
	public void post(Attraction attraction){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			attractionDao.insert(conn, attraction);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
	public Attraction read(int attractionId){
		Connection conn = null;
		Attraction attraction = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			attraction = attractionDao.selectById(conn, attractionId);
			conn.commit();
			if(attraction==null) {
				throw new AttractionNotFoundException();
			}
			return attraction;
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
	public void modify(Attraction attraction){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			attractionDao.update(conn, attraction);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
	public void remove(Attraction attraction){
		Connection conn = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			attractionDao.delete(conn, attraction);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
}
