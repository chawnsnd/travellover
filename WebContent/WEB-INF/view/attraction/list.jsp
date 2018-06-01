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
    	<div class="nav">
    		<table>
    		<form method="get" action="/attraction/list.do">
    		<tr>
    		<th>카테고리</th>
    		<td>
    			<label><input type="radio" name="category" id="allc" value="all">전체</label>
    			<label><input type="radio" name="category" id="to_visit" value="가볼만한 곳">가볼만한 곳 </label>
    			<label><input type="radio" name="category" id="restaurant" value="맛집">맛집 </label>
    			<label><input type="radio" name="category" id="shopping" value="쇼핑">쇼핑 </label>
    			<label><input type="radio" name="category" id="hotel" value="숙박">숙박 </label>
   			</td>
   			<td rowspan="2" class="search">
   				<input type="submit" class="btn" value="검색">
   			</td>
    		<tr>
    		<th>지역</th>
    		<td>
    			<label><input type="radio" name="region" id="allr" value="all">전체 </label>
    			<label><input type="radio" name="region" id="so" value="서울">서울 </label>
    			<label><input type="radio" name="region" id="bs" value="부산">부산 </label>
    			<label><input type="radio" name="region" id="dg" value="대구">대구 </label>
    			<label><input type="radio" name="region" id="ic" value="인천">인천 </label>
    			<label><input type="radio" name="region" id="gj" value="광주">광주 </label>
    			<label><input type="radio" name="region" id="dj" value="대전">대전 </label>
    			<label><input type="radio" name="region" id="us" value="울산">울산 </label>
    			<label><input type="radio" name="region" id="sj" value="세종">세종 </label>
    			<label><input type="radio" name="region" id="gg" value="경기도">경기 </label>
    			<label><input type="radio" name="region" id="gw" value="강원도">강원 </label>
    			<label><input type="radio" name="region" id="cb" value="충청북도">충북 </label>
    			<label><input type="radio" name="region" id="cn" value="충청남도">충남 </label>
    			<label><input type="radio" name="region" id="jb" value="전라북도">전북 </label>
    			<label><input type="radio" name="region" id="jn" value="전라남도">전남 </label>
    			<label><input type="radio" name="region" id="gb" value="경상북도">경북 </label>
    			<label><input type="radio" name="region" id="gn" value="경상남도">경남 </label>
    			<label><input type="radio" name="region" id="jj" value="제주">제주 </label>
    		</td>
    		</tr>
    		</form>
    		</table>
    	</div>
        <u:isAdmin>
        <div style="text-align:right">
          <button type="submit" class="btn btn-default" style="text-align:center">
            <a href="/attraction/post.do">여행지등록</a>
          </button>
        </div>
        </u:isAdmin>
        <c:if test="${attractions.isEmpty() }">
        	<h3>리스트가 존재하지 않습니다.</h3>
        </c:if>
        <c:if test="${!attractions.isEmpty() }">
        <div class="attractions">
        <c:forEach var="attraction" items="${attractions }">
        <div class="attraction">
           <img class="img" src="${attraction.image }" style="width:220px; height:230px;">
           <hr>
           <h4 class="summary">
             <button type="button" class="btn btn-link">
               <a href="read.do?attraction_id=${attraction.attractionId }">${attraction.attractionId } :${attraction.name }</a>
             </button>
           </h4>
        </div>
        </c:forEach>
        </div>
        </c:if>
        <div class="pagination">
        	<a class="page" href="">이전</a>
        	<a class="page" href="">1</a>
        	<a class="page" href="">2</a>
        	<a class="page" href="">3</a>
        	<a class="page" href="">4</a>
        	<a class="page" href="">5</a>
        	<a class="page" href="">다음</a>
        </div>
    </div>
    <jsp:include page="/WEB-INF/view/main/footer.html" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"></script>
    <script>
    function getQuery(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
	$(document).ready(function(){
		$("#allc").attr("checked", "checked");
		$("#allr").attr("checked", "checked");
		if(getQuery("category")=="가볼만한 곳"||getQuery("category")=="가볼만한+곳"){
			$("#to_visit").attr("checked", "checked");
		}else if(getQuery("category")=="맛집"){
			$("#restaurant").attr("checked", "checked");
		}else if(getQuery("category")=="쇼핑"){
			$("#shopping").attr("checked", "checked");
		}else if(getQuery("category")=="숙박"){
			$("#hotel").attr("checked", "checked");
		}
		if(getQuery("region")=="서울"){
			$("#so").attr("checked", "checked");
		}else if(getQuery("region")=="부산"){
			$("#bs").attr("checked", "checked");
		}else if(getQuery("region")=="대구"){
			$("#dg").attr("checked", "checked");
		}else if(getQuery("region")=="인천"){
			$("#ic").attr("checked", "checked");
		}else if(getQuery("region")=="광주"){
			$("#gj").attr("checked", "checked");
		}else if(getQuery("region")=="대전"){
			$("#dj").attr("checked", "checked");
		}else if(getQuery("region")=="울산"){
			$("#us").attr("checked", "checked");
		}else if(getQuery("region")=="세종"){
			$("#sj").attr("checked", "checked");
		}else if(getQuery("region")=="경기도"){
			$("#gg").attr("checked", "checked");
		}else if(getQuery("region")=="강원도"){
			$("#gw").attr("checked", "checked");
		}else if(getQuery("region")=="충청북도"){
			$("#cb").attr("checked", "checked");
		}else if(getQuery("region")=="충청남도"){
			$("#cn").attr("checked", "checked");
		}else if(getQuery("region")=="전라북도"){
			$("#jb").attr("checked", "checked");
		}else if(getQuery("region")=="전라남도"){
			$("#jn").attr("checked", "checked");
		}else if(getQuery("region")=="경상북도"){
			$("#gb").attr("checked", "checked");
		}else if(getQuery("region")=="경상남도"){
			$("#gn").attr("checked", "checked");
		}else if(getQuery("region")=="제주"){
			$("#jj").attr("checked", "checked");
		}
	})
    </script>
  </body>
  <style>
    .main_container {
      padding: 50px 0 50px 0;
      width: 1000px;
      margin: auto;
    }
    .attractions{
    	margin-top: 80px;
    	margin-bottom: 80px;
    }
    table{
    	border: 1px solid #eaeaea;
    }
    th{
    	width: 100px;
    	background-color: #eaeaea;
    }
    .attraction{
    	margin: 15px;
    	width: 210px;
    	display:inline-block;
    	border: 1px solid #eaeaea;
    }
    .search{
    	background-color: #eaeaea;
    }
    .pagination{
    	text-align: center;
    	margin: auto;
    }
    .page{
    	display: inline-block;
    	margin-left: 10px;
    	margin-right: 10px;
    }
  </style>

  </html>