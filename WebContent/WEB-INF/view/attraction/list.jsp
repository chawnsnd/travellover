<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Travellover</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous">
    <link href="/resources/css/layout.css" rel="stylesheet">
  </head>

  <body>
    <jsp:include page="/WEB-INF/view/main/header.jsp" />
    <div class="main_container">
        <div class="col-lg-12" style="margin:auto;">
          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <div class="nav">
            </div>
          </div>
          <u:isAdmin>
          <div style="text-align:right">
            <button type="submit" class="btn btn-default" style="text-align:center">
              <a href="/attraction/post.do">여행지등록</a>
            </button>
          </div>
          </u:isAdmin>
        </div>
        <c:if test="${attractions.isEmpty() }">
        	<h3>리스트가 존재하지 않습니다.</h3>
        </c:if>
        <c:if test="${!attractions.isEmpty() }">
        <c:forEach var="attraction" items="${attractions }">
        <div class="attraction" style="margin:auto">
           <img class="card-img-top" alt="${attraction.name }" src="${attraction.image }" style="width:220px; height:230px">
           <hr>
           <h4 class="card-title">
             <button type="button" class="btn btn-link">
               <a href="read.do?attraction_id=${attraction.attractionId }">${attraction.attractionId } :${attraction.name }</a>
             </button>
           </h4>
        </div>
        </c:forEach>
        </c:if>
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
  </style>

  </html>