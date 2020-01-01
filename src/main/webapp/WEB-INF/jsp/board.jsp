<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 25/12/2019
  Time: 6:22 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>게시판</h1>

    <table border="1">
        <tr>
            <th width="500">subject</th>
            <th>Name</th>
            <th>Read</th>
            <th>Date</th>
            <th>Vote</th>
        </tr>
        <c:forEach var="post" items="${posts}" varStatus="status">
        <tr>
            <td><a href="./viewpost/${post.idx}">${post.subject}</a></td>
            <td>${post.user_name}</td>
            <td>${post.views}</td>
            <td>${post.create_date}</td>
            <td>${post.vote}</td>
        </tr>
        </c:forEach>
    </table>
    <a href="/writepost">글쓰기</a>
</body>
</html>
