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
    <div class="hello">
      ${authUser.getNickname() }님 반갑습니다..
    </div>
    <a href="/user/changePwd.do">비밀번호 변경하기</a>
    <a href="/user/leave.do">회원 탈퇴하기</a>

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
  }

  .title {
    font-size: 25px;
  }

  .domain {
    margin-bottom: 30px;
  }
</style>

</html>