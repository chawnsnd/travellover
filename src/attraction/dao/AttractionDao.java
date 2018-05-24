package attraction.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import attraction.model.Attraction;
import jdbc.JdbcUtil;
import util.DateParser;

public class AttractionDao {
	public Attraction selectById(Connection conn, int attractionId) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(
					"select * from user where attraction_id = ?");
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
	
	public void insert(Connection conn, Attraction attraction) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("insert into attraction values(?,?,?,?,?,?,?,?,?)")){
			pstmt.setInt(1, attraction.getAttractionId());
			pstmt.setString(2, attraction.getName());
			pstmt.setString(3, attraction.getAddress());
			pstmt.setString(4, attraction.getPhone());
			pstmt.setString(5, attraction.getContent());
			pstmt.setString(6, attraction.getCategory());
			pstmt.setString(7, attraction.getImage());
			pstmt.setFloat(8, attraction.getScope());
			pstmt.setInt(9, attraction.getScopeCount());
			pstmt.setTimestamp(10, new Timestamp(attraction.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}

	public void update(Connection conn, Attraction attraction) throws SQLException{
		try(PreparedStatement pstmt=
				conn.prepareStatement("update attraction set name = ?, address = ?, phone = ?, content = ?, category = ?, image = ?")){
			pstmt.setString(1, attraction.getName());
			pstmt.setString(2, attraction.getAddress());
			pstmt.setString(3, attraction.getPhone());
			pstmt.setString(4, attraction.getContent());
			pstmt.setString(5, attraction.getCategory());
			pstmt.setString(6, attraction.getImage());
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
