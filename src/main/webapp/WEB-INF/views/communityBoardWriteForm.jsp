<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board Write Form</title>
    <%@include file="/common/bootstrap_common.jsp" %>

    <script type="text/javascript">
        /* 자바 스크립트 부분 */

    </script>
</head>
<body>
<!--================================= header start ==================================-->
<%@include file="/include/ticket_header.jsp" %>

<!--게시글 작성 폼-->
<div class="card">
    <h5 class="card-header"> ✎ 게시글 작성 </h5>
    <div class="card-body">
        <form action="/community/write" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="제목을 입력하세요.">
        </div>
        <div class="form-group">
            <label for="content">Content</label>
            <input type="text" class="form-control" id="boardContent" name="boardContent" placeholder="내용을 입력하세요.">
        </div>
        <button type="submit" class="btn btn-primary">작성</button>
        </form>
    </div>
</div>


<!--================================= header end ==================================-->

<!--================================= body start ==================================-->

<!--================================= body end ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>