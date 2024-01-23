<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 페이지</title>
    <%@include file="/common/bootstrap_common.jsp" %>

    <style>
        /* 추가적인 스타일링은 여기에 작성하세요 */
        .search-bar {
            margin-top: 10px;
        }

        .search-input {
            max-width: 150px; /* 검색 입력창 최대 너비 지정 */
        }
    </style>

    <script type="text/javascript">
        /* 자바 스크립트 부분 */

    </script>
</head>
<body>
<!--================================= header start ==================================-->
<%@include file="/include/ticket_header.jsp" %>
<!--================================= header end ==================================-->

<!--================================= body start ==================================-->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h2 class="text-center">커뮤니티</h2>
                <hr/>
            </div>
        </div>
    </div>
    <!-- 게시글 목록 -->
    <div class="row">
        <div class="col-md-12">
            <!-- 게시글 리스트 테이블 -->
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">조회수</th>
                </tr>
                </thead>
                <tbody>
                <!-- 여러 게시글을 반복하여 표시 -->
                <c:forEach var="board" items="${communityBoardList}">
                    <tr>
                        <th scope="row">${board.boardId}</th>
                        <td><a href="/community/view/${board.boardId}">${board.boardTitle}</a></td>
                        <th scope="row"> ${board.memberName}</th>
                        <th scope="row">${board.boardHit}</th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- 검색 기능 및 글쓰기 버튼 -->
    <div class="row mt-3">
        <div class="col-md-6 text-right">
            <div class="search-bar">
                <div class="input-group">
                    <input type="text" class="form-control search-input" placeholder="검색어를 입력하세요"
                           aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button">검색</button>
                        <a href="/community/writeform" class="btn btn-success ml-2">글쓰기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================================= body end ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>