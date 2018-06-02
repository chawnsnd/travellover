package attraction.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import attraction.dao.AttractionDao;
import attraction.model.Attraction;
import attraction.model.PagingAttractions;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import util.Pagination;

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
	
	public PagingAttractions list(String region, String category, int page){
		
		Connection conn = null;
		List<Attraction> attractions = null;
		PagingAttractions pagingAttractions = new PagingAttractions();
		try{
			conn=ConnectionProvider.getConnection();
			int totalCount = attractionDao.totalAttraction(conn);
			Pagination pagination = new Pagination(page, 8, 5, totalCount);
			if((region == null || region.isEmpty() || region.equals("all"))&&(category == null || category.isEmpty() || category.equals("all"))){
				attractions = attractionDao.listAll(conn, pagination);
			}else if(region == null || region.isEmpty() || region.equals("all")) {
				attractions = attractionDao.listByCategory(conn, category, pagination);
			}else if(category == null || category.isEmpty() || category.equals("all")) {
				attractions = attractionDao.listByRegion(conn, region, pagination);
			}else {
				attractions = attractionDao.listByRegionAndCategory(conn, region, category, pagination);
			}
			if(attractions.isEmpty()) {
				throw new AttractionNotFoundException();
			}
			pagingAttractions.setAttractions(attractions);
			pagingAttractions.setPagination(pagination);
			return pagingAttractions;
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch(Exception e) {
			System.out.println(e.getMessage());
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
