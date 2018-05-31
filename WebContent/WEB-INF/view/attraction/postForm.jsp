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
    

    <title>등록 페이지</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="/resources/css/layout.css" rel="stylesheet">

  </head>
  <body>

	<!-- Navigation -->
    <jsp:include page="/WEB-INF/view/main/header.jsp" />

    <!-- Page Content -->
    
    <div class="container">

      <!-- Portfolio Item Heading -->
      <h1 class="my-4">여행지 등록페이지</h1>
      <br>
	  
      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-6">
        	<form id="form1" runat="server"> 
        	<input type='file' onchange="readURL(this);" /> 
        	<img id="blah" src="#" width="500" height="300" alt="your image" /> 
        	</form>

        </div>
        <br>
        <div class="col-md-8">
        
          <h3 class="my-3">여행지 정보 입력</h3>
          <br>
          <p>여행지 이름&nbsp;&nbsp;:&nbsp;&nbsp;
          	<input type="text" name="name">
          </p>
          <p>여행지 주소&nbsp;&nbsp;:&nbsp;
          	<input type="text" name="address">
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
          <button type="button" class="btn btn-primary">등록</button>
          <button type="button" class="btn btn-default">취소</button>
        </div>

      </div>
      <!-- /.row -->

      <!-- Related Projects Row -->
      
        </div>

 
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
