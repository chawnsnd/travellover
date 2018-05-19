package attraction.service;

import java.sql.Connection;
import java.sql.SQLException;

import attraction.dao.AttractionDao;
import attraction.model.Attraction;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ScopeService {
	private AttractionDao attractionDao = new AttractionDao();
	
	public void set(int attractionId, float scope){
		Connection conn = null;
		Attraction attraction = null;
		try{
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			attraction = attractionDao.selectById(conn, attractionId);

			if(attraction == null) {
				throw new AttractionNotFoundException();
			}
			float newScope = calculateScope(attraction.getScope(), attraction.getScopeCount(), scope);
			attraction.setScope(newScope);
			attraction.setScopeCount(attraction.getScopeCount()+1);
			attractionDao.insert(conn, attraction);
			conn.commit();
		} catch(SQLException e){
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally{
			JdbcUtil.close(conn);
		}
	}
	
	private float calculateScope(float oldScope, int oldScopeCount, float inputScope) {
		float sum = oldScope * oldScopeCount;
		sum = sum+inputScope;
		float newScope = sum/(oldScopeCount+1);
		return newScope;
	}
}
