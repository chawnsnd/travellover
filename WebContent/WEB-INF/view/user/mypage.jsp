<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/main/header.jsp" />
<div class="main_container">
	<div class="hello">
	${authUser.getNickname() }�� �ݰ����ϴ�.
	</div>
	<a href="/user/changePwd.do">��й�ȣ �����ϱ�</a>
	<a href="/user/leave.do">ȸ��Ż���ϱ�</a>
	
</div>
<jsp:include page="/WEB-INF/view/main/footer.html" />
</body>
<style>
  .main_container {
    padding: 50px 0 50px 0;
    width: 1000px;
    margin: auto;
  }
  .hello{
  	margin-top: 50px;
  	font-weight: bold;
  	font-size: 30px;
  }
  .main{
  	margin-top: 50px;
  }
  .title{
  	font-size: 25px;
  }
  .domain{
  	margin-bottom: 30px;
  }
</style>
</html>