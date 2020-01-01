<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>

        div {
            width: 100%;
            height: 450px;
            border: 1px solid #000;

            text-align: center;
        }

        div.top_di {
            width: 100%;
            height: 150px;
            box-sizing: border-box;
            padding: 30px;

            background-color: #695B4E;
        }

        div.bottom_di {
            width: 100%;
            height: 150px;
            box-sizing: border-box;
            padding: 50px;

            background-color: #988F76;
        }

        div.board_div {
            width: 100%;
            height: 150px;
            box-sizing: border-box;
            padding: 50px;

            background-color: #988F76;
        }

    </style>
    <title>메인 홈</title>
</head>
<body>
    <div id="main_di">
        <div class="top_di">
            <h1>메인 화면에 오신것을 환영합니다.!</h1>
        </div>
        <div class="bottom_di">
            <a class="news" href="#">뉴스 보러 가기</a>
        </div>
        <div class="board_div">
            <a class="board" href="#">게시판</a>
        </div>
    </div>

<%--<form name="frm" method="get" action="news"></form>--%>

</body>
<script>
    $('#main_di a').click(function() {
        location.href=$(this).attr('class');
    });
</script>
</html>