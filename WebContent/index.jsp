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
            <div class="carousel-inner" role="listbox">
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
          <div class="category">
            <a href="/attraction/list.do?category=가볼만한 곳&region=''">가볼만한곳</a>
          </div>
          <div class="category">
            <a href="/attraction/list.do?category=맛집&region=''">맛집</a>
          </div>
          <div class="category">
            <a href="/attraction/list.do?category=쇼핑&region=''">쇼핑</a>

          </div>
          <div class="category">
            <a href="/attraction/list.do?category=숙박&region=''">숙박</a>
          </div>
        </div>
      </div>
      <div class="col-lg" style="text-align: center;">
        <h5>지역별</h5>
        <br>
      </div>
      <div class="regions">
        <div class="region">
          <a href="/attraction/list.do?region=서울&category=''">서울</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=부산&category=''">부산</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=대구&category=''">대구</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=인천&category=''">인천</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=광주&category=''">광주</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=대전&category=''">대전</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=울산&category=''">울산</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=세종&category=''">세종</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=경기도&category=''">경기</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=강원도&category=''">강원</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=충청북도&category=''">충북</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=충청남도&category=''">충남</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=전라북도&category=''">전북</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=전라남도&category=''">전남</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=경상북도&category=''">경북</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=경상남도&category=''">경남</a>
        </div>
        <div class="region">
          <a href="/attraction/list.do?region=제주&category=''">제주</a>
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
      text-align: center;
    }

    .categories {
      text-align: center;
      margin-bottom: 50px;
    }
  </style>

  </html>