<%@page import="jdbc.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="comment.model.Comment"%>
<%@page import="java.util.List"%>
<%@page import="attraction.model.Attraction"%>
<%@page import="comment.dao.CommentDao"%>
<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Connection conn	= null;
	JSONArray result = null;
	try{
		conn = ConnectionProvider.getConnection();
		CommentDao commentDao = new CommentDao();
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(request.getParameter("attraction_id")));
		List<Comment> comments = commentDao.selectByAttraction(conn, attraction);
		result = JSONArray.fromObject(comments);
%>
	<%= result %>
<%
	} catch(SQLException e){
		JdbcUtil.rollback(conn);
	} finally{
		JdbcUtil.close(conn);
	}
%>
