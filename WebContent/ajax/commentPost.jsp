
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
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	CommentDao commentDao = null;
	try{
		
		conn = ConnectionProvider.getConnection();
		commentDao= new CommentDao();

		AuthUser authUser = (AuthUser)request.getSession().getAttribute("authUser");
		if(authUser==null){
			response.sendRedirect("/login.do");
		}
		User user = new User();
		user.setEmail(authUser.getEmail());
		user.setNickname(authUser.getNickname());
		user.setStatus(authUser.getStatus());
		Attraction attraction = new Attraction();
		attraction.setAttractionId(Integer.parseInt(request.getParameter("attraction_id")));
		Comment comment = new Comment();
		comment.setAttraction(attraction);
		comment.setContent(request.getParameter("content"));
		comment.setUser(user);
		commentDao.insert(conn, comment);
	} catch(SQLException e){
		JdbcUtil.rollback(conn);
	} finally{
		JdbcUtil.close(conn);
	}
%>
