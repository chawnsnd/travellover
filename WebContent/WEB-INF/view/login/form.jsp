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
    <div class="box">
        <div class="title">Travellover</div>
        <hr>
        <div class="form" id="login">

            <form action="/login.do" method="post">
                <div>이메일</div>
                <input type="email" name="email" class="inputbox">
                <div>비밀번호</div>
                <input type="password" name="password" class="inputbox">
                <c:if test="${errors.idOrPwNotMatch }">
                    <div>아이디와 암호가 일치하지 않습니다.</div>
                </c:if>
                <div>
                    <input type="submit" class="btn btn-primary" value="로그인">
                    <a href="/join.do">회원가입하러 가기</a>
                </div>
            </form>
        </div>
    </div>
    <!-- Bootstrap core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
<style>
    .box {
        margin: auto;
        margin-top: 150px;
        width: 400px;
        height: 400px;
        border: 3px solid #eaeaea;
        padding: 30px;
    }

    .title {
        text-align: center;
        font-weight: bold;
        font-size: 30px;
        margin-bottom: 15px;
    }

    .form {
        display: inline-block;
        margin-top: 100px;
        margin: auto;
    }

    .inputbox {
        width: 250px;
        margin-bottom: 15px;
    }
</style>

</html>