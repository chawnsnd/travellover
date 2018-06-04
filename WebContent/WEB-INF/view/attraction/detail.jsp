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
        <u:isLogin>
          <div id="nickname" style="display:none;">${authUser.nickname }</div>
        </u:isLogin>
        <div class="left">
          <div class="img_container">
            <img src="${attraction.image }" class="img">
          </div>
        </div>
        <div class="right">
          <h1 id="attraction_name">${attraction.name}</h1>
          <div id="address">${attraction.address}</div>
          <div class="metadata">
          <div class="sub_title">TEL</div>
          <div>${attraction.phone}</div>
          <div class="sub_title">카테고리</div>
          <div>${attraction.category}</div>
          </div>
          <div class="btns">
            <u:isAdmin>
              <form method="get" action="/attraction/modify.do">
                <input type="hidden" name="attraction_id" value="${attraction.attractionId}">
                <input type="submit" class="btn btn-primary" value="수정">
              </form>
              <form method="get" action="/attraction/remove.do">
                <input type="hidden" name="attraction_id" value="${attraction.attractionId}">
                <input type="submit" class="btn btn-warning" value="삭제">
              </form>
            </u:isAdmin>
            	<button class="btn btn-danger" id="report">신고</button>
          </div>
        </div>
        <div class="content" id="content">
          ${attraction.content}
        </div>
        <div class="map" id="map">
        </div>
        <div class="comment">
          <h3>댓글</h3>
          <div class="comment_form">
          </div>
          <div class="comments">
            <table id="comments_table">
              <tr class="no_border">
                <th colspan="3" width="130%;">
                  <textarea rows="3" id="comment_content" style="resize: none; width: 100%;" name="content"></textarea>
                </th>
                <th sytle="text-align: center;">
                  <button id="post_submit" class="btn" width="100%" height="100%">제출</button>
                </th>
              </tr>
            </table>
            <table id="append_comment">
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
      <script src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=yqd0Sy4FLFowJZP_eLcV&submodules=geocoder"></script>
      <script>
        $(document).ready(function () {
        	var content = $.trim($("#content").text());
        	$("#content").text(content);
          map(address);
          fetchComment($("#attraction_id").text());

        })
        $(document).on("click", "#delete_comment", function () {
          var commentId = $(this).attr("commentid")
          var param = {
            "comment_id": commentId,
            'attraction_id': $("#attraction_id").text()
          };
          deleteComment(param);
        });
        $(document).on("click", "#modify_btn", function () {
          var commentId = $(this).attr("commentid")
          $(this).parents("td").parents("tr").children("#comment_content").html("<textarea rows='3' id='modify_content' style='resize: none; width: 100%;' name='content'></textarea>");
          $(this).parents("td").html("<button class='btn btn-primary' style='width: 100%;' commentid='" + commentId + "' id='modify_submit'>수정하기</button>");
        });
        $(document).on("click", "#modify_submit", function () {
          var commentId = $(this).attr("commentid")
          var content = $("#modify_content").val();
          var attractionId = $("#attraction_id").text()
          var param = {
            "comment_id": commentId,
            "content": content,
            'attraction_id': $("#attraction_id").text()
          };
          modifyComment(param);
        })
        $("#report").click(function () {
        	var attraction_name = $("#attraction_name").text();
        	var nickname = $("#nickname").text();
        	if(nickname == ""){
        		nickname = "익명";
        	}
        	var attraction_id = $("#attraction_id").text();

          $.ajax({
        	  type: "post",
              url: "https://wh.jandi.com/connect-api/webhook/15352057/ca484a8a5e183cb01316dc7b0ec76db3",
              data: JSON.stringify({
        		  "body" : "여행지에 대한 새로운 신고가 있습니다. [[내용보기]]("+location.href+")",
        		  "connectColor" : "#FAC11B",
        		  "connectInfo" : [{
        		  "title" : "[번호] 여행지 이름",
        		  "description" : "["+attraction_id+"] "+attraction_name
        		  },
        		  {
        		  "title": "신고자",
        		  "description": nickname
        		  }
        		  ]
       		  }),
       		  headers: {
       			Accept: 'application/vnd.tosslab.jandi-v2+json',
       			'Content-Type': 'application/json'
       			
       		  },
       		  success: function(result){
       			  alert("신고가 완료되었습니다.")
       		  },
       		  error: function(e){
       			  alert("신고에 실패하였습니다.")
       		  }
          });
        })
        $(document).on("click", "#report_comment", function(){
            	var attraction_name = $("#attraction_name").text();
            	var nickname = $("#nickname").text();
            	var author = $(this).parents("td").parents("tr").children("#comment_nickname").text();
            	var comment_content = $(this).parents("td").parents("tr").children("#comment_content").text();
            	console.log(author, comment_content, "asfds");
            	if(nickname == ""){
            		nickname = "익명";
            	}
            	var attraction_id = $("#attraction_id").text();

              $.ajax({
            	  type: "post",
                  url: "https://wh.jandi.com/connect-api/webhook/15352057/ca484a8a5e183cb01316dc7b0ec76db3",
                  data: JSON.stringify({
            		  "body" : "댓글에 대한 새로운 신고가 있습니다. [[내용보기]]("+location.href+")",
            		  "connectColor" : "#FAC11B",
            		  "connectInfo" : [{
            		  "title" : "댓글 작성자",
            		  "description" : author
            		  },
            		  {"title" : "댓글 내용",
               		  	"description" : comment_content
               		  },
            		  {
            		  "title" : "[번호] 여행지 이름",
            		  "description" : "["+attraction_id+"] "+attraction_name
            		  },
            		  {
            		  "title": "신고자",
            		  "description": nickname
            		  }
            		  ]
           		  }),
           		  headers: {
           			Accept: 'application/vnd.tosslab.jandi-v2+json',
           			'Content-Type': 'application/json'
           			
           		  },
           		  success: function(result){
           			  alert("신고가 완료되었습니다.")
           		  },
           		  error: function(e){
           			  alert("신고에 실패하였습니다.")
           		  }
              });
        })
        $("#post_submit").click(function () {
          var content = $("#comment_content").val();
          var post = {
            'attraction_id': $("#attraction_id").text(),
            'content': content
          };
          postComment(post);
        })

        var postComment = function (param) {
          $.ajax({
            type: "post",
            url: "/ajax/commentPost.jsp",
            data: param,
            success: function (result) {
              console.log(result)
              if (result.match("notLogin")) {
                location.replace("/login.do");
              }
              fetchComment(param.attraction_id);
              $("#comment_content").val("");
            },
            error: function (e) {
              console.log(e);
              $("#comment_content").val("");
            }
          });
        }
        var modifyComment = function (param) {
          $.ajax({
            type: "post",
            url: "/ajax/commentModify.jsp",
            data: param,
            success: function (result) {
              console.log(result)
              if (result.match("notUser")) {
                alert("작성자가 아닙니다.");
              }
              fetchComment(param.attraction_id);
              alert("수정되었습니다.")
            },
            error: function (e) {
              console.log(e);
              alert("수정에 실패하였습니다.")
            }
          });
        }
        var deleteComment = function (param) {
          $.ajax({
            type: "post",
            url: "/ajax/commentDelete.jsp",
            data: param,
            success: function (result) {
              console.log(result)
              if (result.match("notUser")) {
                alert("작성자가 아닙니다.");
              }
              fetchComment(param.attraction_id);
              alert("삭제되었습니다.")
            },
            error: function (e) {
              console.log(e);
              alert("삭제에 실패하였습니다.")
            }
          });
        }
        var fetchComment = function (attractionId) {
          var param = { 'attraction_id': attractionId };
          $.ajax({
            type: "post",
            url: "/ajax/commentFetch.jsp",
            data: param,
            success: function (result) {
              comments = JSON.parse(result);
              $("#append_comment").html("");
              for (var i = 0; i < comments.length; i++) {
                comment = JSON.parse(comments[i]);
                if (comment.nickname == $("#nickname").text()) {
                  $("#append_comment").append(
                    "<tr class='border'>" +
                    "<td class='comment_nickname' id='comment_nickname'>" + comment.nickname + "</td>" +
                    "<td class='comment_content' id='comment_content'>" + comment.content + "</td>" +
                    "<td class='comment_moddate'>" + comment.modDate + "</div>" +
                    "<td class='comment_btns'>" +
                    "<button class='btn btn-primary' commentid='" + comment.commentId + "' id='modify_btn'>수정</button>" +
                    "<button class='btn btn-warning' commentid='" + comment.commentId + "' id='delete_comment'>삭제</button>" +
                    "</td>" +
                    "</tr>"
                  );
                } else {
                  $("#append_comment").append(
                    "<tr class='border'>" +
                    "<td class='comment_nickname' id='comment_nickname'>" + comment.nickname + "</td>" +
                    "<td class='comment_content' id='comment_content'>" + comment.content + "</td>" +
                    "<td class='comment_moddate'>" + comment.modDate + "</div>" +
                    "<td class='comment_btns'>" +
                    "<button class='btn btn-danger' style='width: 100%;'commentid='" + comment.commentId + "' id='report_comment'>신고</button>" +
                    "</td>" +
                    "</tr>"
                  );
                }
              }
            },
            error: function (e) {
              console.log(e);
            }
          });
        }
        var map = function () {
          var address = $("#address").text();
          address = address.replace(/\n/g, " ").replace(/\r/g, " ");
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

      .content {
        clear: both;
        padding: 20px 10PX 20px 10PX;
        background-color: #eaeaea;
        margin: 20px 0 20px 0;
        border-radius: 10px;
        white-space: pre-line;
      }

      .img {
        max-width: 400px;
        max-height: 400px;
        vertical-align: middle;
      }

      .img_container {
        text-align: center;
        background-color: #eaeaea;
        width: 400px;
        height: 400px;
        line-height: 400px;
        margin-bottom: 50px;
      }

      .sub_title {
        font-weight: bold;
        font-size: 20px;
        margin-top: 15px;
      }

      .map {
        height: 300px;
      }

      .comment {
        margin-top: 30px;
      }

      .comment_nickname {
        width: 150px;
        font-weight: bold;
      }

      .comment_content {
        width: 531px;
      }

      .comment_moddate {
        width: 200px;
      }

      tr[class="border"] {
        border: 1px solid #eaeaea;
      }
      .btns>*{
      	margin-top: 120px; 
      	float: right;
      	display: inline-block;
      	margin-left: 10px;
      }
      table{
      	width: 100%;
      }
      .metadata{
      	margin-top: 50px;
      }
    </style>

    </html>