<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<jsp:include page="/WEB-INF/view/main/header.jsp" />
	<div class="main_container">
		<div class="main">
			<div class="title">회원탈퇴</div>
			<div class="form">
				<form method="post" action="/user/leave.do">
					<div style="margin-bottom: 20px;">
						<input type="password" name="password" placeholder="비밀번호를 입력하세요">
					</div>
					<div style="margin-bottom: 20px;">
						<input type="submit" class="btn btn-primary" value="탈퇴하기">
					</div>
				</form>
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

	.hello {
		margin-top: 50px;
		font-weight: bold;
		font-size: 30px;
	}

	.main {
		margin-top: 50px;
		margin-bottom: 30px;
	}

	.title {
		font-size: 25px;
	}
</style>

</html>