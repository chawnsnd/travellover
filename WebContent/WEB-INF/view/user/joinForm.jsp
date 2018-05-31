<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Travellover</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="/resources/css/layout.css" rel="stylesheet">


  </head>

  <body>

    <!-- Navigation -->
    <jsp:include page="/WEB-INF/view/main/header.jsp" />
    <!-- Page Content -->
    <div class="section2" id="login">
			<div>
                    <h2>회원가입</h2>
                    <hr>
                        <form>
                            <h3>이메일</h3>
                            <input type="text" name="email">
                            <h3>닉네임</h3>
                            <input type="text" name="nickname">
                            <h3>비밀번호</h3>
                            <input type="password" name="password">
                            <h3>비밀번호확인</h3>
                            <input type="password" namep="password">
                            <br>
                            <br>
                            <input type="submit" value="가입" class="submit">
                            <input type="submit" value="취소" class="submit">
                            
                            
                        </form>
                </div>
    

        </div>
        
<style>
.section2 { 
    height: 500px;
}
.section2 div{
    width:30%;
    margin:auto;
    margin-top: 200px;
}
</style>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-left text-white">Copyright &copy; Travellover</p>
              <p class="m-0 text-right text-white">Tel:010-xxxx-xxxx / 대표 : 차준웅 김지수 진미령</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>

</html>
