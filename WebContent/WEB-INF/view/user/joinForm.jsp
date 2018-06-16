<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="main_container" id="login">
		<h2>회원가입</h2>
		<hr>
		<div class="form">
			<form method="post" action="/join.do">
				<div>이메일</div>
				<input type="email" id="email" name="email" class="inputbox">
				<div id="email_check" class="check"></div>
				<div>닉네임</div>
				<input type="text" id="nickname" name="nickname" class="inputbox">
				<div id="nickname_check" class="check"></div>
				<div>비밀번호</div>
				<input type="password" id="password" name="password" class="inputbox">
				<div>비밀번호확인</div>
				<input type="password" id="password2" name="confirmPassword" class="inputbox">
				<div id="password_check" class="check"></div>
				<div>
					<input type="submit" class="btn btn-primary join" value="가입">
					<button class="btn cancel" id="cancel">취소</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/main/footer.html" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	 crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	 crossorigin="anonymous"></script>
	<script>
		$("#cancel").click(function () {
			history.go(-1);
		});

		$("#email").on('keyup focusout', function () {
			var param = { 'email': $("#email").val() }
			console.log(param);
			//에이젝스통신해서 중복인지 아닌지 가져옴
			$.ajax({
				url: '/ajax/emailCheck.jsp',
				data: param,
				success: function (data) {
					var valid = data.trim();
					console.log(valid);
					if (valid == "true") {
						$("#email_check").html("사용가능한 이메일입니다.");
						$("#email").removeClass("red_border");
						$("#email").addClass("green_border");
					} else {
						$("#email_check").html("사용중인 이메일입니다.");
						$("#email").removeClass("green_border");
						$("#email").addClass("red_border");
					}
				}
			})
		})

		$("#nickname").on('keyup focusout', function () {
			var param = { 'nickname': $("#nickname").val() }
			//아작스통신해서 중복인지 아닌지 가져옴
			$.ajax({
				url: '/ajax/nicknameCheck.jsp',
				data: param,
				success: function (data) {
					var valid = data.trim();
					console.log(valid);
					if (valid == "true") {
						$("#nickname_check").html("사용가능한 닉네임입니다.");
						$("#nickname").removeClass("red_border");
						$("#nickname").addClass("green_border");
					} else {
						$("#nickname_check").html("사용중인 닉네임입니다.");
						$("#nickname").removeClass("green_border");
						$("#nickname").addClass("red_border");
					}
				}
			})
		})
		$("#password2").keyup(function () {
			if ($("#password2").val() != $("#password").val()) {
				$("#password_check").html("비밀번호가 달라용.");
				$("#password2").removeClass("green_border");
				$("#password2").addClass("red_border");
			} else {
				$("#password_check").html("맞아용!");
				$("#password2").removeClass("red_border");
				$("#password2").addClass("green_border");
			}
		})
	</script>
</body>
<style>
	.guideline {
		border: 1px solid red;
	}

	.main_container {
		margin: auto;
		width: 1000px;
		margin-top: 100px;
		margin-bottom: 100px;
	}

	.red_border {
		border: 2px solid red;
	}

	.green_border {
		border: 2px solid green;
	}

	.check {
		display: inline-block;
		margin-left: 20px;
	}

	.inputbox {
		width: 250px;
		margin-bottom: 15px;
	}

	.join {
		display: inline-block;
	}

	.cancel {
		display: inline-block;
	}
</style>

</html>