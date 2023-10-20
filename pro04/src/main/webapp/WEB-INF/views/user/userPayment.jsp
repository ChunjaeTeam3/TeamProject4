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

<div class="container-lg" style="margin: 100px auto; width: 85%;">

    <!-- section1(delivery info) Start -->
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
            <h6><i class="fa-brands fa-whatsapp" style="color: #424243; padding-right: 15px;"></i>배송문의고객센터 : <a href="${path}/notice/list" style="text-decoration: none; color:#000;">02-123-5678 (클릭시 링크 이동)</a></h6>
        </div>
    </div>
    <!-- section1(delivery info) End -->

    <!-- section2(payment table) Start -->
    <div class="row" style="width: 85%; margin: 0 auto; padding-bottom: 50px;">
        <div class="row" style="padding-left: 50px;">
            <h4><i class="fa-solid fa-wallet" style="color: #343537; padding-right: 15px;"></i>결제완료 내역</h4>
        </div>
        <div class="card col-lg-12"  style="border-top: 1px solid darkgray; border-bottom: 1px solid darkgray;">
            <c:forEach var="payment" items="${paymentList}">
            <div class="card" style=" width: 70%; border: 1px solid lightgray;     margin: 30px auto;">
                <div class="card-header" style="display: flex;">
                    <div style="margin-right: 570px; padding-top: 20px;"><strong>결제완료 | ${payment.resdate}</strong> </div>
                    <div><button type="button" onclick="payCheck2()" class="btn btn-secondary">주문상세</button>
                         <button type="button" onclick="delCheck()" class="btn btn-secondary" style="margin: 10px;">배송조회</button>
                    </div>
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <div style="border-bottom: 1px dashed darkgray;"><h4>${payment.lname}</h4></div>
                        <div style=" float: right; width: 95%;"><div style="border-bottom: 1px dashed darkgray;">ㄴ ${payment.bname}</div></div>
                    </blockquote>
                </div>
            </div>
            </c:forEach>
            <c:if test="${empty paymentList}">
                <div class="container-md-5" style="margin:30px auto;">
                    <strong class="text-center">결제내역이 없습니다.</strong>
                </div>
            </c:if>
        </div>
    </div>
    <script>
        function payCheck2(){
            var pno = $("#pno").val();
            var child;
            child = window.open("${path}/payment/payDetail??pno=${payment.pno}", "child", "width=700, height=900");
        }
    </script>
    <script>
        function delCheck(){
            var dno = $("#dno").val();
            var child;
            child = window.open("${path}/payment/deliveryDetail?dno=${payment.dno}", "child", "width=700, height=900");
        }
    </script>
    <!-- section2(payment table) End -->



</div>
<!-- userPayment End -->
</body>
</html>