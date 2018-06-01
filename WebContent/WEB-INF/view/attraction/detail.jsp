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
        <div id="attraction_id" style="display:none;">${attraction.attractionId}</div>
        <div class="left">
          <div class="img_container">
            <img src="${attraction.image }" class="img">
          </div>
        </div>
        <div class="right">
          <h1>${attraction.name}</h1>
          <div id="address">${attraction.address}</div>
          <div class="sub_title">TEL</div>
          <div>${attraction.phone}</div>
          <div class="sub_title">카테고리</div>
          <div>${attraction.category}</div>
          <div class="sub_title">평균별점</div>
          <span>${attraction.scope}</span>
          <span>(${attraction.scopeCount}명 평가)</span>
          <u:isAdmin>
            <div class="btns">
                <button id="modify" class="btn btn-primary">수정</button>
                <button id="delete" class="btn btn-danger">삭제</button>
              </form>
            </div>
          </u:isAdmin>
        </div>
        <div class="content">
          ${attraction.content}
        </div>
        <div class="map" id="map">
        </div>
        <h3>댓글</h3>
        <div class="comment">
          <div class="comment_form">
          </div>
          <div class="comments">
            <table>
              <tr>
                  <th colspan="3" width="870px;">
                  <textarea rows="3" id="comment_content" style="resize: none; width: 100%;" name="content"></textarea>
                  </th>
                  <th sytle="text-align: center;">
                  <button id="post_submit" class="btn" width="100%" height="100%">제출</button>
                  </th>
              </tr>
              <!-- c:for -->
              <div class="comments">
          	</div>
          	<!-- /c:for -->
          </table>
        </div>
      </div>
      </div>
      <jsp:include page="/WEB-INF/view/main/footer.html" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
      <script src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=?????"></script>
      <script>
        $(document).ready(function () {
        	console.log("수정121asdfdasf2");
        	var address = $("#address").text();
        	
			//map(address);

/* 			fetchComment(post); */
			
			$("#post_submit").click(function(){
				var content = $("#comment_content").val();
				var post = {
						'attraction_id': $("#attraction_id").text(),
						'content': content
				};
				postLand(post);
			})
			
        })
        
        var postLand = function(param){
        	$.ajax({
        		type: "post",
				url: "/ajax/commentPost.jsp", 
				data: param,
        		success: function(result){
         			fetchComment(param.attraction_id);
        			$("#post_content").val("");
		   	 	},
		   	 	error: function(e){
		   	 		console.log(e);
		   	 		$("#post_content").val("");
		   	 	}
       		});
        }
         var fetchComment = function(attractionId){
        	var param= {'attraction_id': attractionId};
        	$.ajax({
        		type: "post",
				url: "/ajax/commentFetch.jsp", 
				data: param,
        		success: function(result){
        			console.log(result);
                	for(comment in comments){
                		$("#comments").append(                
            				"<tr>"+
                            	"<td class='comment_nickname'>홍길동</td>"+
                            	"<td class='comment_content'>좋아요!!</td>"+
                            	"<td class='comment_moddate'>2018-05-20</div>"+
            	          		"<td class='comment_btns'>"+
            	            		"<button class='btn btn-primary' href='#'>수정</button>"+
            	            		"<button class='btn btn-danger' href='#'>삭제</button>"+
            	          		"</td>"+
                      		"</tr>"
           				);
                	}
		   	 	},
		   	 	error: function(e){
		   	 		console.log(e);
		   	 	}
       		});

        }
        /* var map = function(address) {
          var mapDiv = document.getElementById('map');
          var map = new naver.maps.Map(mapDiv);
          var myaddress = address; // 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
          naver.maps.Service.geocode({ address: myaddress }, function (
            status,
            response
          ) {
            if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + "의 검색 결과가 없거나 기타 네트워크 에러");
            }
            var result = response.result;
            console.log(result.items[0].point.x,result.items[0].point.y);
            var myaddr = new naver.maps.Point(
              result.items[0].point.x,
              result.items[0].point.y
            );
            map.setCenter(myaddr);
            var marker = new naver.maps.Marker({
              position: myaddr,
              map: map
            });
            naver.maps.Event.addListener(marker, "click", function (e) {
              if (infowindow.getMap()) {
                infowindow.close();
              } else {
                infowindow.open(map, marker);
              }
            });
            var infowindow = new naver.maps.InfoWindow({
              content:
                '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
            });
          });
        } */
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

      .sub_title {
        font-weight: bold;
      }

      .map {
        height: 300px;
      }

      .comment_nickname {
        width: 150px;
        font-weight: bold;
      }

      .comment_content {
        width: 520px;
      }

      .comment_moddate {
        width: 200px;
      }

      tr {
        border: 1px solid #eaeaea;
      }
    </style>

    </html>