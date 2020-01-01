<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 29/12/2019
  Time: 4:29 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/writepost" method="post">
        <h1>글쓰기</h1>
        <textarea rows="30" cols="100" name="contents"></textarea>
        <input type="submit" value="Save" />
    </form>
</body>
</html>
