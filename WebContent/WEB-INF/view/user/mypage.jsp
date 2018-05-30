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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/index.html">Travellover</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/attraction/list.do">여행지
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
                    <div style="text-align:center">
                    	<h1>MYPAGE</h1>
                    	<hr>
                    	<br> 
                        	<form>
                            	<button type="button" class="btn btn-default btn-lg">비밀번호 변경</button>
                            	<br><br>
                            	<button type="button" class="btn btn-danger btn-lg" onclick="showConfirm();">회원 탈퇴</button>
                    </div>        
                            
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
		<script language="javascript">
			function showConfirm(){
				if(confirm("탈퇴한 회원은 30일간 재가입이 불가능합니다. 탈퇴하시겠습니까?")){
					alert("탈퇴처리되었습니다")
				}
				else{
					alert("취소되었습니다")
				}
					
			}
		</script>
  </body>

</html>