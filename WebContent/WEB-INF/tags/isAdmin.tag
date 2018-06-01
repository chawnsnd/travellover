<%@tag import="auth.service.AuthUser"%>
<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true"%>
<%
	HttpSession httpSession = request.getSession(false);
	if(httpSession!=null&&httpSession.getAttribute("authUser")!=null){
		AuthUser authUser = (AuthUser)httpSession.getAttribute("authUser");
		if(authUser.getStatus().equals("ADMIN")){
%>
<jsp:doBody/>
<%
		}
	}
%>