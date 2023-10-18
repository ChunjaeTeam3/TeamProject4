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

<!--QnA List-->
    <div class="container-fluid" style="padding: 100px">
        <table class="table is-fullwidth is-center" id="apply-table">
            <thead>
            <tr>
                <th width="15%" class="has-text-centered">신청번호</th>
                <th width="15%" class="has-text-centered">이벤트 글 번호</th>
                <th width="20%" class="has-text-centered">참여자 아이디</th>
                <th width="20%" class="has-text-centered">참여자 이름</th>
                <th width="30%" class="has-text-centered">참여자 전화번호</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${applyList }" var="apply" varStatus="status">
                <tr>
                    <td class="has-text-centered">${apply.appno}</td>
                    <td class="has-text-centered">${apply.eno}</td>
                    <td class="has-text-centered">${apply.id}</td>
                    <td class="has-text-centered">${apply.name}</td>
                    <td class="has-text-centered">${apply.tel}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty applyList}">
                <tr>
                    <td colspan="6" class="has-text-centered"> 참여자가 없습니다. </td>
                </tr>
            </c:if>
            </tbody>
        </table>
        <script type="text/javascript">
            jQuery(function ($){
                $("#apply-table").DataTable();
            })
        </script>
        <div class="buttons is-right mb-100" style="margin-top: 30px;">
            <a class="button is-primary" href="${path}/admin/winners.do?eno=${eno}"> 당첨자 추첨 </a>
        </div>
    </div>
</div>
<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->
</body>
</html>