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
    <title> 배송관리 </title>
    <jsp:include page="../layout/head.jsp"></jsp:include>
    <!-- 관리자 페이지 스타일 적용 -->
    <link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
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
                    <%--결제완료 목록--%>
                    <table class="table" id="pay-table">
                        <thead>
                        <tr>
                            <th width="80">번호</th>
                            <th>상품명</th>
                            <th width="200">주문자ID</th>
                            <th width="120">결제일</th>
                            <th width="100">배송상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${deliveryList }" var="delivery" varStatus="status">
                            <tr>
                                <td>${delivery.dno }</td>
                                <td ><a href="${path}/admin/deliveryUpdate?dno=${delivery.dno }" style="color: #000000; text-decoration: none;">${delivery.title }</a></td>
                                <td>${delivery.id }</td>
                                <td>
                                    <fmt:parseDate value="${delivery.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                                    <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                                </td>
                                <td>${delivery.dstatus}</td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty deliveryList}">
                            <tr>
                                <td colspan="6" class="has-text-centered"> 결제내역이 없습니다. </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="container-fluid" style="padding: 100px">
                <div>
                    <%--배송관리 목록--%>
                    <table class="table" id="del-table">
                        <thead>
                        <tr>
                            <th width="80">송장번호</th>
                            <th>상품명</th>
                            <th width="200">배송시작일</th>
                            <th width="120">배송예정일</th>
                            <th width="100">배송상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${deliveryList }" var="delivery" varStatus="status">
                            <tr>
                                <td>${delivery.dcode }</td>
                                <td ><a href="${path}/admin/deliveryUpdate?dno=${delivery.dno }" style="color: #000000; text-decoration: none;">${delivery.title }</a></td>
                                <td>${delivery.id }</td>
                                <td>
                                    <fmt:parseDate value="${delivery.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                                    <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                                </td>
                                <td>${delivery.edate}</td>
                                <td>${delivery.dstatus}</td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty deliveryList}">
                            <tr>
                                <td colspan="6" class="has-text-centered"> 배송내역이 없습니다. </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(function ($){
        $("#pay-table").DataTable();
    })
</script>
<script type="text/javascript">
    jQuery(function ($){
        $("#del-table").DataTable();
    })
</script>

<!-- 푸터 영역 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>