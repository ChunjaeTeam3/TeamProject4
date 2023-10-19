<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수강내역</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>
        .card { border: none; margin-bottom: 24px; -webkit-box-shadow: 0 0 13px 0 rgba(236,236,241,.44);box-shadow: 0 0 13px 0 rgba(236,236,241,.44);}
        #profile {margin-top: 10px;border-radius: 30px;width: 150px;}
    </style>
</head>
<body>
<!-- header Start -->
<jsp:include page="../layout/header.jsp" />
<!-- header End -->

<!-- banner Start -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url(${paht}/resources/img/bg-img/breadcumb3.jpg);">
    <div class="bradcumbContent">
        <p>See what’s new</p>
        <h2>수강내역</h2>
    </div>
</section>
<!-- banner End -->

<!-- userPayment Start -->
<!-- sidemenu Start -->
<div class="container-xl" style="float:right;">
    <div class="row">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${path}/user/myPage" >${user.name} 님</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/edit">내정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/lecture">수강내역</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/payment">주문/배송내역</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- sidemenu End -->

<!-- section2(payment Table) Start -->
<div class="row" style="width: 85%; margin: 0 auto; padding-bottom: 50px;">
    <div class="row">
        <h5><i class="fa-solid fa-desktop" style="color: #000000; padding-right: 15px;"></i>나의 결제내역</h5>
    </div>
    <div class="col-lg-12" style="width: 100%;">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive project-list">
                    <table class="table project-table table-centered table-nowrap">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">강좌명</th>
                            <th scope="col">강사</th>
                            <th scope="col">수강기간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="lecture" items="${myLecture}" >
                            <c:if test="${item.state eq 'on'}">
                                <tr>
                                    <th scope="row">${lecture.lcode}</th>
                                    <td>${lecture.lname}</td>
                                    <td>${lecture.tname}</td>
                                    <td>${lecture.sdate} ~ ${lecture.edate}</td>
                                </tr>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty myLecture}">
                            <tr>
                                <td colspan="6" class="has-text-centered"> 수강신청한 강의가 없습니다. </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>

                <nav aria-label="Page navigation example" >
                    <c:if test="${curPage > 5}">
                        <a href="${path}/user/payment?page=${page.blockStartNum - 1}"
                           class="page-link">Previous</a>
                    </c:if>
                    <c:if test="${page.blockLastNum < page.totalPageCount}">
                        <a href="${path}/user/payment?page=${page.blockLastNum + 1}" class="page-link">Next page</a>
                    </c:if>

                    <ul class="pagination justify-content-center">
                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                            <c:choose>
                                <c:when test="${i == curPage}">
                                    <li class="page-item">
                                        <a href="${path}/user/payment?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                           class="page-link active" aria-label="Page ${i}"
                                           aria-current="page" style="background-color: #545050; color:#FFFFFF" ;>${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a href="${path}/user/payment?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                           class="page-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- section2(payment Table) End -->

<!-- section3(Delivery info) Start -->
<div class="row" style="width: 85%; margin: 0 auto; padding-bottom: 50px;">
    <div class="row">
        <h5><i class="fa-solid fa-desktop" style="color: #000000; padding-right: 15px;"></i>나의 결제내역</h5>
    </div>
    <div class="col-lg-12" style="width: 100%;">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive project-list">
                    <table class="table project-table table-centered table-nowrap">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">강좌명</th>
                            <th scope="col">강사</th>
                            <th scope="col">수강기간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="lecture" items="${myLecture}" >
                            <c:if test="${item.state eq 'on'}">
                                <tr>
                                    <th scope="row">${lecture.lcode}</th>
                                    <td>${lecture.lname}</td>
                                    <td>${lecture.tname}</td>
                                    <td>${lecture.sdate} ~ ${lecture.edate}</td>
                                </tr>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty myLecture}">
                            <tr>
                                <td colspan="6" class="has-text-centered"> 수강신청한 강의가 없습니다. </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>

                <nav aria-label="Page navigation example" >
                    <c:if test="${curPage > 5}">
                        <a href="${path}/user/payment?page=${page.blockStartNum - 1}"
                           class="page-link">Previous</a>
                    </c:if>
                    <c:if test="${page.blockLastNum < page.totalPageCount}">
                        <a href="${path}/user/payment?page=${page.blockLastNum + 1}" class="page-link">Next page</a>
                    </c:if>

                    <ul class="pagination justify-content-center">
                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                            <c:choose>
                                <c:when test="${i == curPage}">
                                    <li class="page-item">
                                        <a href="${path}/user/payment?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                           class="page-link active" aria-label="Page ${i}"
                                           aria-current="page" style="background-color: #545050; color:#FFFFFF" ;>${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a href="${path}/user/payment?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                           class="page-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- section3(Delivery info) End -->


<!-- userPayment End-->


<!-- Footer Start -->
<jsp:include page="../layout/footer.jsp" />
<!-- Footer End -->
<!-- userPayment End -->
</body>
</html>