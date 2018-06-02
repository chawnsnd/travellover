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
	System.out.println(request.getParameter("comment_id"));
	conn = ConnectionProvider.getConnection();
	commentDao = new CommentDao();
	HttpSession httpSession = request.getSession(false);
	AuthUser authUser = (AuthUser)request.getSession().getAttribute("authUser");
	Comment comment = commentDao.selectById(conn, Integer.parseInt(request.getParameter("comment_id")));
	if(httpSession==null||httpSession.getAttribute("authUser")==null){
%>
<%="notLogin" %>
<%
	}else if(authUser.getEmail().equals(comment.getUser().getEmail())){
		commentDao.delete(conn, comment);
	}else{
%>
<%="notUser" %>
<%
	}
} catch(SQLException e){
	JdbcUtil.rollback(conn);
} finally{
	JdbcUtil.close(conn);
}

%>
