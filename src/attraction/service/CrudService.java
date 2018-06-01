package attraction.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import attraction.dao.AttractionDao;
import attraction.model.Attraction;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class CrudService {
	
	private AttractionDao attractionDao = new AttractionDao();
	
	public void post(Attraction attraction){
		attraction.setRegDate(new Date());
		attraction.setScope(0);
		attraction.setScopeCount(0);
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
			attraction = attractionDao.selectById(conn, attractionId);
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
	
	public List<Attraction> list(String region, String category){
		Connection conn = null;
		List<Attraction> attractions = null;
		try{
			conn=ConnectionProvider.getConnection();
			if((region == null || region.isEmpty() || region.equals("all"))&&(category == null || category.isEmpty() || category.equals("all"))){
				attractions = attractionDao.listAll(conn);
			}else if(region == null || region.isEmpty() || region.equals("all")) {
				attractions = attractionDao.listByCategory(conn, category);
			}else if(category == null || category.isEmpty() || category.equals("all")) {
				attractions = attractionDao.listByRegion(conn, region);
			}else {
				attractions = attractionDao.listByRegionAndCategory(conn, region, category);
			}
			if(attractions.isEmpty()) {
				throw new AttractionNotFoundException();
			}
			return attractions;
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
