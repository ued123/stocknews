<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 08/12/2019
  Time: 8:52 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/webjars/jquery/dist/jquery.min.js"></script>
<html>
<head>
    <title>기업별 뉴스</title>
</head>
<body>

    <table border="2">
        <c:forEach items="${companyList}" var="list" varStatus="status">
            <tr>
                <td>${list.name}</td>
            </tr>
        </c:forEach>
    </table>

    <textarea id="res" rows="30" cols="100"></textarea>

    <div>
        <p>기업</p>
    </div>
</body>
<script>
    $('tr').click(function() {

        var td = $(this).children();

        $.ajax({
            url: '/news/'+td.text(),
            type: 'POST',
            success: function(data) {
                var data = JSON.parse(data);
                $('#res').val("타이틀:"+data.items[0].title +"\n" +"링크:"+data.items[0].link);
            },
            error: function(request,status,error) {
                console.log('code:'+request.status+'\n'+'message:'+request.responseText+'\n'+'error:'+error);
            }
        })
    });
</script>

</html>
