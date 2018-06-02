<%@page import="util.Pagination"%>
<%@page import="attraction.model.PagingAttractions"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="comment.model.ResultComment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.DateParser"%>
<%@page import="jdbc.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="comment.model.Comment"%>
<%@page import="java.util.List"%>
<%@page import="attraction.model.Attraction"%>
<%@page import="comment.dao.CommentDao"%>
<%@page import="jdbc.connection.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn	= null;
	try{
		conn = ConnectionProvider.getConnection();
		CommentDao commentDao = new CommentDao();
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(request.getParameter("attraction_id")));
		List<Comment> comments = commentDao.selectByAttraction(conn, attraction);
		List<String> result = new ArrayList<>();
		for(Comment comment : comments){
			ResultComment resultComments = new ResultComment();
			resultComments.setNickname(comment.getUser().getNickname());
			resultComments.setContent(comment.getContent());
			resultComments.setModDate(DateParser.toString(comment.getModDate()));
			resultComments.setAttractionId(comment.getAttraction().getAttractionId());
			resultComments.setCommentId(comment.getCommentId());
			result.add(new Gson().toJson(resultComments));
		}
		String json = new Gson().toJson(result);
		HttpSession httpSession = request.getSession(false);
%>
	<%= json %>
<%
	} catch(SQLException e){
		JdbcUtil.rollback(conn);
		System.out.println(e);
	} finally{
		JdbcUtil.close(conn);
	}
%>
