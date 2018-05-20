<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>수정 페이지</title>

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
    <div class="container">

      <!-- Portfolio Item Heading -->
      <h1 class="my-4">여행지 수정페이지</h1>
      <br>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-5">
        	<div>
        		<form id="form1" runat="server">
        			<img id="blah" src="https://imgec.trivago.com/itemimages/0/0.jpeg" alt="your image" />
        			<br>
        			<br><input type='file' id="imgInp" />
    			</form>
        	</div>
    
        	
        </div>
        <div class="col-md-4">
        
          <h3 class="my-3">여행지 정보 입력</h3>
          <br>
          <p>여행지 이름&nbsp;&nbsp;:&nbsp;&nbsp;
          	<input type="text" name="name">
          </p>
          <p>여행지 주소&nbsp;&nbsp;:&nbsp;
          	<input type="text" name="address" size="100">
          </p>
          <p>여행지 전화번호&nbsp;&nbsp;:&nbsp;&nbsp;
          	<input type="text" name="phonenumber1" size="3"> -
          	<input type="text" name="phonenumber2" size="4"> -
          	<input type="text" name="phonenumber3" size="4">
          </p>
          <p>여행지 카테고리&nbsp;
          	<select name="category">
    			<option value="">직접선택</option>
    			<option value="맛집">맛집</option>
    			<option value="쇼핑">쇼핑</option>
    			<option value="관광">관광</option>
 			</select>
          </p>
          <p>여행지 테마 &nbsp;
          <input type="checkbox" name="category" value="friend">친구
          <input type="checkbox" name="category" value="family">가족
          <input type="checkbox" name="category" value="couple">연인
          <br><br>
          <button type="button" class="btn btn-primary">수정</button>
          <button type="button" class="btn btn-default">취소</button>
        </div>

      </div>
      <!-- /.row -->

      <!-- Related Projects Row -->
      <h3 class="my-4">추가사진 등록</h3>

      <div class="row">

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <form id="form1" runat="server">
        		<img class="img-fluid" src="http://placehold.it/500x300" alt="" >
        		<br><br>
        		<input type='file' id="imgInp" />
    		</form>
          </a>
        </div>
        <div style="padding-right:50px"></div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <form id="form1" runat="server">
        		<img class="img-fluid" src="http://placehold.it/500x300" alt="" >
        		<br><br>
        		<input type='file' id="imgInp" />
    		</form>
          </a>
        </div>
        <div style="padding-right:50px"></div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <form id="form1" runat="server">
        		<img class="img-fluid" src="http://placehold.it/500x300" alt="" >
        		<br><br>
        		<input type='file' id="imgInp" />
    		</form>
          </a>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

   <!-- Bootstrap core JavaScript -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(function() {
            $("#imgInp").on('change', function(){
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
        }


    </script>
 
  </body>

</html>