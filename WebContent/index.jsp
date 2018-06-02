<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html lang="en">
  <script src="/lib/w3.js"></script>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous">
    <link href="/resources/css/layout.css" rel="stylesheet">
  </head>

  <body>
    <jsp:include page="/WEB-INF/view/main/header.jsp" />
    <div class="main_container">
      <div class="container-fluid">
        <div class="row image_slider">
          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel" style="text-align: center; margin: auto;">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner img_container" role="listbox">
              <div class="carousel-item active">
                <img class="img-fluid" src="/img/danyang.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="img-fluid" src="/img/jeju.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="img-fluid" src="/img/pazu.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        <div class="col-lg" style="text-align: center;">
          <h5>테마별</h5>
          <br>
        </div>
        <div class="categories">
          <div class="category" onclick="location.href='/attraction/list.do?category=가볼만한 곳&page=1'">
            <div class="name">가볼만한 곳</div>
          </div>
          <div class="category" onclick="location.href='/attraction/list.do?category=맛집&page=1'">
            <div class="name">맛집</div>
          </div>
          <div class="category" onclick="location.href='/attraction/list.do?category=쇼핑&page=1'">
            <div class="name">쇼핑</div>
          </div>
          <div class="category" onclick="location.href='/attraction/list.do?category=숙박&page=1'">
            <div class="name">숙박</div>
          </div>
        </div>
      </div>
      <div class="col-lg" style="text-align: center;">
        <h5>지역별</h5>
        <br>
      </div>
      <div class="regions">
        <div class="region" onclick="location.href='/attraction/list.do?region=서울&page=1'">
          <div class="name">서울</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=부산&page=1'">
          <div class="name">부산</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=대구&page=1'">
          <div class="name">대구</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=인천&page=1'">
          <div class="name">인천</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=광주&page=1'">
          <div class="name">광주</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=대전&page=1'">
          <div class="name">대전</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=울산&page=1'">
          <div class="name">울산</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=세종&page=1'">
          <div class="name">세종</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=경기&page=1'">
          <div class="name">경기</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=강원&page=1'">
          <div class="name">강원</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=충북&page=1'">
          <div class="name">충북</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=충남&page=1'">
          <div class="name">충남</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=전북&page=1'">
          <div class="name">전북</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=전남&page=1'">
          <div class="name">전남</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=경북&page=1'">
          <div class="name">경북</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=경남&page=1'">
          <div class="name">경남</div>
        </div>
        <div class="region" onclick="location.href='/attraction/list.do?region=제준&page=1'">
          <div class="name">제주</div>
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

    .region {
      margin-left: 15px;
      margin-right: 15px;
      margin-bottom: 30px;
      display: inline-block;
      border: 1px solid #eaeaea;
      width: 300px;
      height: 150px;
      line-height: 150px;
      font-size: 25px;
      position: relative;
    }
    .region:hover{
  		box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.19);
  		font-size: 30px;
  		cursor: pointer
	}

    .regions {
      text-align: center;
    }
    .category {
      margin-left: 15px;
      margin-right: 15px;
      display: inline-block;
      border: 1px solid #eaeaea;
      width: 205px;
      height: 150px;
      line-height: 150px;
      text-align: center;
      border-radius: 5px;
      font-size: 25px;
    }
    .category:hover{
  		box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.19);
  		font-size: 30px;
  		cursor: pointer
	}
	.name{
		display:inline-block;
		margin: auto;
	}

    .categories {
      text-align: center;
      margin-bottom: 50px;
    }
  </style>

  </html>