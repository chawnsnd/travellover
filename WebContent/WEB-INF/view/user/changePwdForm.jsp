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
		<div class="title">-- ��й�ȣ ���� --</div>
		<div class="form">
			<form method="post" action="/user/changePwd.do">
				<div style="margin-bottom: 20px;"><input type="password" name="curPwd" placeholder="���� �н����带 �Է��ϼ���"></div>
				<div style="margin-bottom: 20px;"><input type="password" name="newPwd" placeholder="������ �н����带 �Է��ϼ���"></div>
				<div style="margin-bottom: 20px;"><input type="submit" class="btn btn-primary" value="����"></div>
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