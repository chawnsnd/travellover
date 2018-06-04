package attraction.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import attraction.model.Attraction;
import jdbc.JdbcUtil;
import util.DateParser;
import util.Pagination;

public class AttractionDao {
	
	public int totalAttraction(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			int rowCnt = 0;
			pstmt = conn.prepareStatement("select * from attraction");
			rs = pstmt.executeQuery();
	        while(rs.next()) {
	        	rowCnt++;
	        }
			return rowCnt;
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Attraction selectById(Connection conn, int attractionId) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where attraction_id = ?");
			pstmt.setInt(1,  attractionId);
			rs = pstmt.executeQuery();
			Attraction attraction = null;
			if(rs.next()){
				attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
			}
			return attraction;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Attraction> listAll(Connection conn, Pagination pagination) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction order by attraction_id desc limit ?,?");
			pstmt.setInt(1, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(2, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByCategory(Connection conn, String category, Pagination pagination) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where category = ? order by attraction_id desc limit ?,? ");
			pstmt.setString(1, category);
			pstmt.setInt(2, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(3, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByRegion(Connection conn, String region, Pagination pagination) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where address like ? order by attraction_id desc limit ?,?");
			pstmt.setString(1, "%"+region+"%");
			pstmt.setInt(2, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(3, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByRegionAndCategory(Connection conn, String region, String category, Pagination pagination) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where category =? and address like ? order by attraction_id desc limit ?,? ");
			pstmt.setString(1, category);
			pstmt.setString(2, "%"+region+"%");
			pstmt.setInt(3, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(4, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Attraction> listAllBySearch(Connection conn, Pagination pagination, String search) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where name like ? or content like ? order by attraction_id desc limit ?,?");
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+search+"%");
			pstmt.setInt(3, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(4, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByCategoryBySearch(Connection conn, String category, Pagination pagination, String search) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where category = ? and (name like ? or content like ?) order by attraction_id desc limit ?,? ");
			pstmt.setString(1, category);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+search+"%");
			pstmt.setInt(4, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(5, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByRegionBySearch(Connection conn, String region, Pagination pagination, String search) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where address like ? and (name like ? or content like ?) order by attraction_id desc limit ?,?");
			pstmt.setString(1, "%"+region+"%");
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+search+"%");
			pstmt.setInt(4, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(5, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Attraction> listByRegionAndCategoryBySearch(Connection conn, String region, String category, Pagination pagination, String search) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Attraction> attractions = new ArrayList<>();
		try{
			pstmt = conn.prepareStatement(
					"select * from attraction where category =? and address like ? and (name like ? or content like ?) order by attraction_id desc limit ?,? ");
			pstmt.setString(1, category);
			pstmt.setString(2, "%"+region+"%");
			pstmt.setString(3, "%"+search+"%");
			pstmt.setString(4, "%"+search+"%");
			pstmt.setInt(5, (pagination.getPage()-1)*pagination.getCountList());
			pstmt.setInt(6, pagination.getCountList());
			rs = pstmt.executeQuery();
			while(rs.next()){
				Attraction attraction = new Attraction(
						rs.getInt("attraction_id"),
						rs.getString("name"),
						rs.getString("address"),
						rs.getString("phone"),
						rs.getString("content"),
						rs.getString("category"),
						rs.getString("image"),
						rs.getFloat("scope"),
						rs.getInt("scope_count"),
						DateParser.toDate(rs.getTimestamp("regdate")));
				attractions.add(attraction);
			}
			return attractions;
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	
	public void insert(Connection conn, Attraction attraction) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("insert into attraction(name, address, phone, content, category, image, scope, scope_count, regdate) values(?,?,?,?,?,?,?,?,?)")){
			pstmt.setString(1, attraction.getName());
			pstmt.setString(2, attraction.getAddress());
			pstmt.setString(3, attraction.getPhone());
			pstmt.setString(4, attraction.getContent());
			pstmt.setString(5, attraction.getCategory());
			pstmt.setString(6, attraction.getImage());
			pstmt.setFloat(7, attraction.getScope());
			pstmt.setInt(8, attraction.getScopeCount());
			pstmt.setTimestamp(9, new Timestamp(attraction.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}

	public void update(Connection conn, Attraction attraction) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("update attraction set name = ?, address = ?, phone = ?, content = ?, category = ?, image = ? where attraction_id = ?")){
			pstmt.setString(1, attraction.getName());
			pstmt.setString(2, attraction.getAddress());
			pstmt.setString(3, attraction.getPhone());
			pstmt.setString(4, attraction.getContent());
			pstmt.setString(5, attraction.getCategory());
			pstmt.setString(6, attraction.getImage());
			pstmt.setInt(7, attraction.getAttractionId());
			pstmt.executeUpdate();
		}
	}
	
	public void delete(Connection conn, Attraction attraction) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("delete from attraction where attraction_id = ?")){
			pstmt.setInt(1, attraction.getAttractionId());
			pstmt.executeUpdate();
		}
	}
	
}
