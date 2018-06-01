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
	<div class="main">
	<div class="domain">
		<div class="title">-- 비밀번호 변경 --</div>
		<div class="form">
			<form method="post" action="/user/changePwd.do">
				<div style="margin-bottom: 20px;"><input type="password" name="curPwd" placeholder="기존 패스워드를 입력하세요"></div>
				<div style="margin-bottom: 20px;"><input type="password" name="newPwd" placeholder="변경할 패스워드를 입력하세요"></div>
				<div style="margin-bottom: 20px;"><input type="submit" class="btn btn-primary" value="변경"></div>
			</form>
		</div>
	</div>
	</div>
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