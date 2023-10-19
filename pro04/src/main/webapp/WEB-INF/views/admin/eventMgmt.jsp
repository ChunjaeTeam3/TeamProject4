<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 고객지원관리 </title>
    <jsp:include page="../layout/head.jsp"></jsp:include>
    <!-- 관리자 페이지 스타일 적용 -->
    <link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
</head>
<body>
<div id="wrapper">
    <jsp:include page="../layout/adminSidebar.jsp" />
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <ul class="navbar-nav ml-auto">
                    <div class="topbar-divider d-none d-sm-block"></div>

                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"> 안녕하세요, 관리자님 </span>
                            <img class="img-profile rounded-circle"
                                 src="${path}/resources/img/adminProfile.svg">
                        </a>
                    </li>
                </ul>
            </nav>
        <div class="container-fluid" style="padding: 100px">
                    <div>
                        <%--이벤트 목록--%>
                        <table class="table" id="event-table">
                            <thead>
                            <tr>
                                <th width="80">번호</th>
                                <th>제목</th>
                                <th width="200">이벤트상태</th>
                                <th width="120">작성일</th>
                                <th width="100">당첨</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${eventList }" var="event" varStatus="status">
                                <tr>
                                    <td>${event.eno }</td>
                                    <td ><a href="${path}/event/detail.do?eno=${event.eno }" style="color: #000000; text-decoration: none;">${event.title }</a></td>
                                    <c:if test='${event.status eq "1"}'>
                                        <td><span class="tag is-success is-light is-medium">진행 중</span></td>
                                    </c:if>
                                    <c:if test='${event.status eq "0"}'>
                                        <td><span class="tag is-danger is-light is-medium">종료</span></td>
                                    </c:if>
                                    <td>
                                        <fmt:parseDate value="${event.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                                        <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                                    </td>
                                    <td>
                                        <div class="button-group" style="align-items: center">
                                            <a class="button is-link" href="${path}/admin/applyList.do?eno=${event.eno }">참여자 확인</a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty eventList}">
                                <tr>
                                    <td colspan="6" class="has-text-centered"> 작성된 이벤트가 없습니다. </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script async type="text/javascript" src="../js/bulma.js"></script>
    <script type="text/javascript">
        jQuery(function ($){
            $("#event-table").DataTable();
        })
    </script>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

</body>
</html>