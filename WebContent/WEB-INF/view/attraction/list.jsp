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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	 crossorigin="anonymous">
</head>

<body>
	<jsp:include page="/WEB-INF/view/main/header.jsp" />
	</div>
	<div class="main_container">
		<div class="nav">
			<form id="form" method="get" action="/attraction/list.do">
				<div class="search_box">
					<input class="search_input" id="search_text" name="search" type="text" placeholder="검색어를 입력하세요" />
					<i class="fas fa-search" id="search_button"></i>
				</div>
				<table>
					<input type="hidden" name="page" value="1">
					<tr>
						<th>카테고리</th>
						<td>
							<label>
								<input type="radio" name="category" id="allc" value="all">전체</label>
							<label>
								<input type="radio" name="category" id="to_visit" value="가볼만한 곳">가볼만한 곳 </label>
							<label>
								<input type="radio" name="category" id="restaurant" value="맛집">맛집 </label>
							<label>
								<input type="radio" name="category" id="shopping" value="쇼핑">쇼핑 </label>
							<label>
								<input type="radio" name="category" id="hotel" value="숙박">숙박 </label>
						</td>
						<tr>
							<th>지역</th>
							<td>
								<label>
									<input type="radio" name="region" id="allr" value="all">전체 </label>
								<label>
									<input type="radio" name="region" id="so" value="서울">서울 </label>
								<label>
									<input type="radio" name="region" id="bs" value="부산">부산 </label>
								<label>
									<input type="radio" name="region" id="dg" value="대구">대구 </label>
								<label>
									<input type="radio" name="region" id="ic" value="인천">인천 </label>
								<label>
									<input type="radio" name="region" id="gj" value="광주">광주 </label>
								<label>
									<input type="radio" name="region" id="dj" value="대전">대전 </label>
								<label>
									<input type="radio" name="region" id="us" value="울산">울산 </label>
								<label>
									<input type="radio" name="region" id="sj" value="세종">세종 </label>
								<label>
									<input type="radio" name="region" id="gg" value="경기">경기 </label>
								<label>
									<input type="radio" name="region" id="gw" value="강원">강원 </label>
								<label>
									<input type="radio" name="region" id="cb" value="충북">충북 </label>
								<label>
									<input type="radio" name="region" id="cn" value="충남">충남 </label>
								<label>
									<input type="radio" name="region" id="jb" value="전북">전북 </label>
								<label>
									<input type="radio" name="region" id="jn" value="전남">전남 </label>
								<label>
									<input type="radio" name="region" id="gb" value="경북">경북 </label>
								<label>
									<input type="radio" name="region" id="gn" value="경남">경남 </label>
								<label>
									<input type="radio" name="region" id="jj" value="제주">제주 </label>
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
		<div class="query">
			<h5 id="search_info"></h5>
		</div>
		<c:choose>
			<c:when test="${attractions.isEmpty()==null}">
				<div class="no_list">리스트가 존재하지 않습니다.</div>
			</c:when>
			<c:otherwise>
				<div class="attractions">
					<c:forEach var="attraction" items="${attractions }">
						<div class="attraction" id="attraction" onclick="location.href='/attraction/read.do?attraction_id=${attraction.attractionId }'">
							<img class="img" src="${attraction.image }" style="width:200px; height:200px;">
							<hr>
							<h5 class="summary">
								<div class="attraction_name">${attraction.name }</a>
							</h5>
							</div>
					</c:forEach>
					</div>
			</c:otherwise>
		</c:choose>
		<div class="pagination_box">
			<div class="pagination">
				<c:if test="${pagination.start }">
					<a class="page" href="/attraction/list.do?page=1&region=${region }&catetory=${category}">처음</a>
				</c:if>
				<c:if test="${pagination.prev }">
					<a class="page" href="/attraction/list.do?page=${pagination.page - 1}&region=${region }&catetory=${category}">이전</a>
				</c:if>
				<c:forEach var="page" begin="${pagination.startPage }" end="${pagination.endPage }" step="1">
					<c:choose>
						<c:when test="${pagination.page==page}">
							<b>${page }</b>
						</c:when>
						<c:otherwise>
							<a class="page" href="/attraction/list.do?page=${page}&region=${region }&catetory=${category}">${page }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pagination.next }">
					<a class="page" href="/attraction/list.do?page=${pagination.page + 1}&region=${region }&catetory=${category}">다음</a>
				</c:if>
				<c:if test="${pagination.end }">
					<a class="page" href="/attraction/list.do?page=${paginantion.totalPage }&region=${region }&catetory=${category}">끝</a>
				</c:if>
			</div>
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
			$(document).ready(function () {
				var category = getQuery("category");
				var region = getQuery("region");
				var search = getQuery("search");

				$("#search_button").click(function () {
					var search_text = $("#search_text").val();
					$('#form').submit();
				})
				$("#search_text").keyup(function (e) {
					var search_text = $("#search_text").val();
					if (e.keyCode == 13) $('#form').submit();
				})

				$('input[type="radio"]').click(function () {
					$('#form').submit();
				})

				$('#attraction').click(function () {
					$(this).find('#a').click();
				})

				$("#search_text").val(search);
				if (search != "") $("#search_info").text(search + "에 대한 검색 결과");

				if (category == "가볼만한 곳" || category == "가볼만한+곳") {
					$("#to_visit").attr("checked", "checked");
				} else if (category == "맛집") {
					$("#restaurant").attr("checked", "checked");
				} else if (category == "쇼핑") {
					$("#shopping").attr("checked", "checked");
				} else if (category == "숙박") {
					$("#hotel").attr("checked", "checked");
				} else {
					$("#allc").attr("checked", "checked");
				}
				if (region == "서울") {
					$("#so").attr("checked", "checked");
				} else if (region == "부산") {
					$("#bs").attr("checked", "checked");
				} else if (region == "대구") {
					$("#dg").attr("checked", "checked");
				} else if (region == "인천") {
					$("#ic").attr("checked", "checked");
				} else if (region == "광주") {
					$("#gj").attr("checked", "checked");
				} else if (region == "대전") {
					$("#dj").attr("checked", "checked");
				} else if (region == "울산") {
					$("#us").attr("checked", "checked");
				} else if (region == "세종") {
					$("#sj").attr("checked", "checked");
				} else if (region == "경기") {
					$("#gg").attr("checked", "checked");
				} else if (region == "강원") {
					$("#gw").attr("checked", "checked");
				} else if (region == "충북") {
					$("#cb").attr("checked", "checked");
				} else if (region == "충남") {
					$("#cn").attr("checked", "checked");
				} else if (region == "전북") {
					$("#jb").attr("checked", "checked");
				} else if (region == "전남") {
					$("#jn").attr("checked", "checked");
				} else if (region == "경북") {
					$("#gb").attr("checked", "checked");
				} else if (region == "경남") {
					$("#gn").attr("checked", "checked");
				} else if (region == "제주") {
					$("#jj").attr("checked", "checked");
				} else {
					$("#allr").attr("checked", "checked");
				}
			})
		</script>
</body>
<style>
	.search_box {
		width: 100%;
		height: 60px;
		border: 5px solid orange;
		margin-bottom: 20px;
		position: relative;
	}

	.search_input {
		width: 100%;
		height: 100%;
		position: relative;
		border: none;
		border-right: 0px;
		border-top: 0px;
		border-left: 0px;
		border-bottom: 0px;
		outline: none;
		padding-left: 15px;
		font-size: 20px;
	}

	.fa-search {
		font-size: 20px;
		top: 50%;
		right: 2%;
		transform: translate(-50%, -50%);
		position: absolute;
		cursor: pointer;
	}

	.main_container {
		padding: 50px 0 50px 0;
		width: 1000px;
		margin: auto;
	}

	.attractions {
		margin-top: 10px;
		margin-bottom: 80px;
	}

	table {
		border: 1px solid #eaeaea;
	}

	th {
		width: 100px;
		background-color: #eaeaea;
	}

	.attraction {
		margin: 15px;
		width: 210px;
		display: inline-block;
		border: 1px solid #eaeaea;
	}

	.attraction:hover {
		box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.19);
		cursor: pointer
	}

	.search {
		background-color: #eaeaea;
	}

	.pagination {
		text-align: center;
		margin: auto;
	}

	.page {
		display: inline-block;
		margin-left: 10px;
		margin-right: 10px;
	}

	.no_list {
		text-align: center;
		font-size: 30px;
		font-weight: bold;
		margin: 200px;
	}

	.pagination {
		display: inline-block;
		margin: auto;
		border: 1px solid #eaeaea;
		padding: 0 5px 0 5px;
		font-size: 20px;
	}

	.guideline {
		border: 1px solid red;
	}

	.pagination_box {
		text-align: center;
	}

	.query {
		margin-top: 30px;
	}
</style>

</html>