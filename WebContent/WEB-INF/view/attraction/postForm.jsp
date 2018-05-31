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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous">
    <link href="/resources/css/layout.css" rel="stylesheet">
  </head>

  <body>
    <jsp:include page="/WEB-INF/view/main/header.jsp" />
    <div class="main_container">
      <h1 style="margin-bottom: 30px;">여행지 등록페이지</h1>
      <form method="post" action="/attraction/post.do" enctype="multipart/form-data">
        <div class="left">
          <div class="img_container">
            <img id="blah" class="img" />
          </div>
          <div>
            <input type='file' id="imgInp" />
          </div>
        </div>
        <div class="right">
          <h3>여행지 정보 입력</h3>
          <div class="input_form">
            <span class="input_title">이름</span>
            <input type="text" name="name">
          </div>
          <div class="input_form">
            <span class="input_title address">주소</span>
            <textarea type="text" name="address"></textarea>
          </div>
          <div class="input_form">
            <span class="input_title">전화번호</span>
            <input type="text" name="phone1" size="3"> -
            <input type="text" name="phone2" size="4"> -
            <input type="text" name="phone3" size="4">
            <div id="phone"></div>
          </div>
          <div class="input_form">
            <span class="input_title">카테고리</span>
            <select name="category">
              <option disabled selected="selected">카테고리 선택</option>
              <option value="가볼만한 곳">가볼만한 곳</option>
              <option value="맛집">맛집</option>
              <option value="쇼핑">쇼핑</option>
              <option value="숙박">숙박</option>
            </select>
          </div>
        </div>
        <div class="content">
          <h5>설명</h5>
          <textarea name="content" style="resize: none; width: 100%;" rows="5"></textarea>
        </div>
        <div class="btns">
          <input type="submit" class="btn btn-primary" value="등록"/>
          <button type="button" id="cancel" class="btn btn-default">취소</button>
        </div>
      </form>
    </div>
    <jsp:include page="/WEB-INF/view/main/footer.html"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"></script>
    <script type="text/javascript">
      $(function () {
        $("#imgInp").on('change', function () {
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
  <style>
    .main_container {
    	padding: 50px 0 50px 0;
    	width: 1000px;
    	margin: auto;
    }

    .guideline {
      border: 1px solid red;
    }

    .left {
      float: left;
    }

    .right {
      float: right;
      width: 500px;
    }

    .input_form {
      margin: 20px 0 20px 0;
    }

    .address {
      vertical-align: top;
    }

    input[name="name"] {
      width: 70%;
    }

    textarea[name="address"] {
      width: 70%;
      resize: none;
    }

    .content {
      padding-top: 30px;
      clear: both;
    }

    .btns {
      margin-top: 20px;
      text-align: right;
    }

    .input_title {
      display: inline-block;
      width: 100px;
    }

    .img {
      max-width: 400px;
      max-height: 400px;
    }

    .img_container {
      text-align: center;
      background-color: grey;
      width: 400px;
      height: 400px;
    }
  </style>

  </html>