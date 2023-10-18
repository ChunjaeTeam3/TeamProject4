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
    <title>주문/배송 내역</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>
        .card { border: none; margin-bottom: 24px; -webkit-box-shadow: 0 0 13px 0 rgba(236,236,241,.44);box-shadow: 0 0 13px 0 rgba(236,236,241,.44);}
        #infoTel {width: 100%; margin-left: 2px;margin-top: 20px; border-bottom: 2px solid darkgray; padding-bottom: 10px!important;  padding-left: 20px;}
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
        <h2>주문/배송 내역</h2>
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

<!-- section1(payment table) Start -->
<div class="row" style="width: 85%; margin: 0 auto; padding-bottom: 50px;">
    <div class="row" style="padding-left: 50px;">
        <h4><i class="fa-solid fa-wallet" style="color: #343537; padding-right: 15px;"></i>결제완료 내역</h4>
    </div>
    <div class="col-lg-12" style="width: 100%;">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive project-list">
                    <table class="table project-table table-centered table-nowrap">
                        <thead>
                        <tr>
                            <th scope="col">주문번호</th>
                            <th scope="col">주문내용</th>
                            <th scope="col">주문금액</th>
                            <th scope="col">주문일자</th>
                            <th scope="col">주문상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="payment" items="${myPayment}" >
                            <tr>
                                <th scope="row">${payment.pno}</th>
                                <td>${payment.title}</td>
                                <td>${payment.price}</td>
                                <td>
                                    <fmt:parseDate value="${payment.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                                </td>
                                <td>
                                    <c:if test="${payment.status eq '0'}">
                                        배송준비중
                                    </c:if>
                                    <c:if test="${payment.status eq '1'}">
                                        배송중
                                    </c:if>
                                    <c:if test="${payment.status eq '2'}">
                                        배송완료
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty myPayment}">
                            <tr>
                                <td colspan="6" class="has-text-centered"> 주문 내역이 없습니다. </td>
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
<!-- section1(payment table) End -->

<!-- section2(delivery info) Start -->
<div class="row" style="width: 80%; margin: 150px auto;">
    <div class="row" style="padding-left: 50px;">
        <h4><i class="fa-solid fa-circle-info" style="color: #363535; padding-right: 15px;"></i>배송상태 안내</h4>
    </div>
    <div class="col-lg-12" style="display: flex;border-top: 2px solid darkgray; padding-top: 30px; border-bottom: 2px dashed lightgray;">
    <div class="col-xl-4 col-md-6" >
        <div class="card bg-pattern">
            <div class="card-body" style="height: 200px; border-right: 1px solid darkgray;">
                <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                    <i class="fa-solid fa-check-to-slot" style="color: #4a4c4f;"></i>
                </div>
                <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">결제완료</p>
                <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" >판매자가 주문을 확인하는 단계</h5>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-6" >
        <div class="card bg-pattern">
            <div class="card-body" style="height: 200px; border-right: 1px solid darkgray;">
                <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                    <i class="fa-solid fa-box" style="color: #494a4b;"></i>
                </div>
                <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">배송준비중</p>
                <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" >
                    주문상품 준비 및 택배 발송하는 단계</h5>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-6" >
        <div class="card bg-pattern">
            <div class="card-body" style="height: 200px;">
                <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                    <i class="fa-solid fa-truck" style="color: #393a3c; "></i>
                </div>
                <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">발송완료</p>
                <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" > 상품발송이 완료되어
                    배송추적 가능 단계</h5>
            </div>
        </div>
    </div>
    </div>
    <div class="row" id="infoTel" style="padding-left: 50px; border-bottom: 2px solid darkgray;">
        <h6><i class="fa-brands fa-whatsapp" style="color: #424243; padding-right: 15px;"></i>배송문의고객센터 : http://localhost:8080/team34_war/qna/list.do</h6>
    </div>
</div>
<!-- section2(delivery info) End -->

<!-- userPayment End -->
</body>
</html>