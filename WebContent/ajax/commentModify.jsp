<%@page import="java.util.Date"%>
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
	commentDao = new CommentDao();
	AuthUser authUser = (AuthUser)request.getSession().getAttribute("authUser");
	Comment comment = commentDao.selectById(conn, Integer.parseInt(request.getParameter("comment_id")));
	if(authUser.getEmail().equals(comment.getUser().getEmail())){
		comment.setContent(request.getParameter("content"));
		commentDao.modify(conn, comment);
	}else{
%>
<%="notUser" %>
<%
	}
	
	
} catch(SQLException e){
	System.out.println(e.getMessage());
	JdbcUtil.rollback(conn);
} finally{
	JdbcUtil.close(conn);
}

%>