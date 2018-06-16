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
  <title>Travellover</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link href="/resources/css/layout.css" rel="stylesheet">
</head>

<body>
  <jsp:include page="/WEB-INF/view/main/header.jsp" />
  <div class="main_container">
    <h1 style="margin-bottom: 30px;">여행지 수정</h1>
    <form method="post" action="/attraction/modify.do" enctype="multipart/form-data">
      <div class="left">
        <div class="img_container">
          <img id="blah" class="img" src="${attraction.image}" />
        </div>
        <div>
          <input type='file' id="imgInp" name="image"/>
        </div>
      </div>
      <div class="right">
        <h3>여행지 정보 입력</h3>
        <div class="input_form">
          <span class="input_title">이름</span>
          <input type="text" name="name" value="${attraction.name }">
        </div>
        <div class="input_form">
          <span class="input_title">주소</span>
          <input type="button" onclick="daumPostcode()" value="우편번호 찾기">
          <div>
          	<div id="address_tmp" style="display: none">${attraction.address }</div>
            <textarea style="margin-left: 100px" type="text" id="address" name="address" placeholder="도로명주소" row="3"></textarea>
          </div>
        </div>
        <div class="input_form">
          <span class="input_title">전화번호</span>
          <input type="text" name="phone1" size="3" value="${phone[0] }"> -
          <input type="text" name="phone2" size="4" value="${phone[1] }"> -
          <input type="text" name="phone3" size="4" value="${phone[2] }">
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
        <textarea name="content" style="resize: none; width: 100%;" rows="5">${attraction.content }</textarea>
      </div>
      <div class="btns">
        <input type="hidden" name="attraction_id" value="${attraction.attractionId}" />
        <input type="submit" class="btn btn-primary" value="수정" />
        <button type="button" id="cancel" class="btn btn-default">취소</button>
      </div>
    </form>
  </div>
  <jsp:include page="/WEB-INF/view/main/footer.html"></jsp:include>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $("#imgInp").on('change', function () {
        readURL(this);
      });
      $("#cancel").on('click', function () {
        history.back(-1)
      })
      $("#address").val($("#address_tmp").text())
    })
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          $('#blah').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
      }
    }
    function daumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
              extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if (fullRoadAddr !== '') {
              fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $("#address").html(fullRoadAddr);

          }
        }).open();
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
    line-height: 400px;
  }
</style>

</html>