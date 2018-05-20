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
    <link href="resources/css/small-business.css" rel="stylesheet">


  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/index.html">Travellover</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="attraction/list.do">여행지
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/mypage.do">마이페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login.do">로그인</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

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
    display: inline-block;
    border: 1px solid black;
    width:50%;
    margin:5rem 20rem;
    padding:2rem;

}
a.btn.btn-primary.btn-xs.active{
	
	margin-left: 37rem;
	display: flex;

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
