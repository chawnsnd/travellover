<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여행지 상세페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <link href="/resources/css/layout.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/view/main/header.jsp" />
    <div class="main_container">
        <div class="left">
	        <div class="img_container">
	            <img src="${attraction.image }" class="img">
	        </div>
        </div>
        <div class="right">
            <h1>${attraction.name}</h1>
            <span>${attraction.address}</span>
            <div class="sub_title">TEL</div>
            <div>${attraction.phone}</div>
            <div class="sub_title">카테고리</div>
            <div>${attraction.category}</div>
            <div class="sub_title">평균별점</div>
            <span>${attraction.scope}</span><span>(${attraction.scopeCount}명 평가)</span>
            <u:isAdmin>
            <div class="btns">
            <form method="get" action="/attraction/modify.do">
            	<input type="hidden" name="attraction_id" value="${attraction.attractionId}">
	            <input type="submit" class="btn btn-primary" value="수정">
            </form>
            <form method="get" action="/attraction/remove.do">
            	<input type="hidden" name="attraction_id" value="${attraction.attractionId}">
	            <input type="submit" class="btn btn-danger" value="삭제">
            </form>
            </div>
            </u:isAdmin>
        </div>
        <div class="content">
        	${attraction.content}
        </div>
        <div class="map guideline" id="map">
            ${attraction.address}    
        </div>
       	<h3>댓글</h3>
        <div class="comment">
            <div class="comment_nickname" style="margin-right: 20px; font-weight: bold;">홍길동</div>
            <div class="comment_content">좋아요!!</div>
            <div class="comment_moddate">2018-05-20</div>
            <div class="comment_btns">
                <button class="btn btn-warning" href="#">답글</button>
                <button class="btn btn-primary" href="#">수정</button>
                <button class="btn btn-danger" href="#">삭제</button>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/view/main/footer.html" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
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

    .content {
      clear: both;
      padding: 20px 0 20px 0;
      background-color: #eaeaea;
      margin: 20px 0 20px 0;
      border-radius: 10px;
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
      margin-bottom: 50px;
    }
    .sub_title{
   		font-weight: bold;
   	}
   	.map{
   		height: 300px;
   	}
</style>

</html>