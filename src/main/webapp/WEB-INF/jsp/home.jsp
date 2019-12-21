<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>메인 홈</title>
</head>
<body>
<h1>메인 화면에 오신것을 환영합니다.!</h1>
<a id="news" href="#">뉴스 보러 가기</a>

<form name="frm" method="get" action="news"></form>

</body>
<script>
    $('#news').click(function() {
        frm.submit();
    });
</script>
</html>