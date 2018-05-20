<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여행지 상세페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
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
    <div class="container">
      <!-- Heading Row -->
      <div class="row my-4">
        <div class="col-lg-8">
          <img class="img-fluid rounded" src="http://pds.joins.com/news/component/htmlphoto_mmdata/201612/23/htm_201612231840736186.jpg" alt="">
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
          <h1>단국대학교</h1>
          <p>주소 : 경기도 용인시 수지구 죽전동</p>
          <p>TEL : 031)XXX-XXXX</p>
          <p>카테고리 : 관광</p>
          <p>테마 : 친구, 공부</p>
          <p>평균별점 : ★★★★☆</p>
          <a class="btn btn-primary btn-lg" href="/attraction/modify.do">수정</a>
          <a class="btn btn-danger btn-lg remove_btn" href="/attraction/remove.do">삭제</a>
        </div>
      </div>
      <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
          <p class="text-white m-0">단국대학교는 대한민국 경기도 용인시 수지구 죽전로와 충청남도 천안시 동남구 단대로에 있는 4년제 사립 종합대학교이다.</p>
        </div>
      </div>
      <div class="card my-4 text-center">
            <div class="card-body">
              <img class="img-fluid rounded" src="https://www.google.co.kr/maps/vt/data=js7AiDsvDCU-7dKtpTYsTEdQoMJhM5EoPTK3cd045ZvKAcALF5Nnf-vIQSbgscKO6wNWAIakaLhkQdBSawKv07rIQRlcADuh6nuZj6gfOWB-gs0K1abcL5ArwzTqX1Maxto9YqkFpKUzjC0F4spgfJrfeOptadivgX8&w=226&h=160">
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">크게보기</a>
	        </div>
      </div>
   		<div class="card my-4">
   			<div class="card-header">
   				<h3>댓글</h3>
   			</div>
   			<div class="card-body">
   				<div class="comment">
   					<span style="margin-right: 20px; font-weight: bold;">홍길동</span>
   					<span>좋아요!!</span>
   					<span>2018-05-20</span>
   					<div class="btns">
	  					<button class="btn btn-warning" href="#">답글</button>
	  					<button class="btn btn-primary" href="#">수정</button>
		         		<button class="btn btn-danger" href="#">삭제</button>
          		</div>
   				</div>
   				<div class="comment">
   					<span style="margin-right: 20px; font-weight: bold;">홍길동</span>
   					<span>좋아요!!</span>
   					<span>2018-05-20</span>
   					<div class="btns">
	  					<button class="btn btn-warning" href="#">답글</button>
	  					<button class="btn btn-primary" href="#">수정</button>
		         		<button class="btn btn-danger" href="#">삭제</button>
          		</div>
   				</div>
   				<div class="comment">
   					<span style="margin-right: 20px; font-weight: bold;">홍길동</span>
   					<span>좋아요!!</span>
   					<span>2018-05-20</span>
   					<div class="btns">
	  					<button class="btn btn-warning" href="#">답글</button>
	  					<button class="btn btn-primary" href="#">수정</button>
		         		<button class="btn btn-danger" href="#">삭제</button>
          		</div>
   				</div>
   			</div>
   		</div>
	</div>

    <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-left text-white">개인정보 처리방침</p>
        <p class="m-0 text-right text-white">TEL : 000-XXX-XXXX</p>
      </div>
      <!-- /.container -->
    </footer>
    	<!-- Bootstrap core JavaScript -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>

</html>
