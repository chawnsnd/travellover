
<%@page import="jdbc.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="comment.model.Comment"%>
<%@page import="attraction.model.Attraction"%>
<%@page import="user.model.User"%>
<%@page import="auth.service.AuthUser"%>
<%@page import="comment.dao.CommentDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	CommentDao commentDao = null;
	try{
		
		conn = ConnectionProvider.getConnection();
		commentDao= new CommentDao();

		AuthUser authUser = (AuthUser)request.getSession().getAttribute("authUser");
		System.out.println(authUser);
		User user = new User();
		user.setEmail(authUser.getEmail());
		user.setNickname(authUser.getNickname());
		user.setStatus(authUser.getStatus());
		System.out.println(request.getParameter("attraction_id"));
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(request.getParameter("attraction_id")));
		System.out.println(attraction.toString());
		Comment comment = new Comment();
		comment.setAttraction(attraction);
		comment.setContent(request.getParameter("content"));
		comment.setUser(user);
		System.out.println("adsfsad");
		commentDao.insert(conn, comment);
	} catch(SQLException e){
		JdbcUtil.rollback(conn);
	} finally{
		JdbcUtil.close(conn);
	}
%>
