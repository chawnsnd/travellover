<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "user.service.*" %>
<%@ page import= "user.model.*" %>

<%
ValidCheckService validCheckService = new ValidCheckService();
Boolean valid = true;
try{
	String email = request.getParameter("email");
	validCheckService.checkByEmail(email);
}catch(DuplicateEmailException e){
	valid = false;
}finally{
%>
<%= valid %>
<%
}
%>
