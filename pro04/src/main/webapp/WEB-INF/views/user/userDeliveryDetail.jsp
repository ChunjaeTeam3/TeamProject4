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
    <title>배송 상세페이지</title>
    <jsp:include page="../layout/head.jsp" />
</head>
<body>
<div class="container" style="margin: 100px auto; width: 100%;">
    <!-- section1(delivery status) End -->
    <div style=" margin: 30px auto;">
        <div>
            <h4><i class="fa-solid fa-bookmark" style="color: #232424; margin-right: 15px;"></i>배송현황</h4>
        </div>
        <div class="col-md-12" style="display: flex;border-top: 2px solid darkgray; padding-top: 30px; border-bottom: 2px dashed lightgray;">
            <div class="col-md-4 " >
                <div class="card bg-pattern">
                    <div class="card-body" style="height: 200px; border-right: 1px solid darkgray;">
                        <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                            <c:if test="${delivery.status eq '0'}">
                                <i class="fa-solid fa-check-to-slot" style="color: #95addd;"></i>
                            </c:if>
                            <i class="fa-solid fa-check-to-slot" style="color: #767779;"></i>
                        </div>
                        <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">결제완료</p>
                        <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" >판매자가 주문을 확인하는 단계</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 " >
                <div class="card bg-pattern">
                    <div class="card-body" style="height: 200px; border-right: 1px solid darkgray;">
                        <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                            <c:if test="${delivery.status eq '1'}">
                                <i class="fa-solid fa-box" style="color: #95addd;"></i>
                            </c:if>
                            <i class="fa-solid fa-box" style="color: #767779;"></i>
                        </div>
                        <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">배송준비중</p>
                        <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" >
                            주문상품 준비 및 택배 발송하는 단계</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 " >
                <div class="card bg-pattern">
                    <div class="card-body" style="height: 200px;">
                        <div class="float-left" style="text-align: center;  font-size: 40px; width: 100%;">
                            <c:if test="${delivery.status eq '2'}">
                                <i class="fa-solid fa-truck" style="color: #95addd;"></i>
                            </c:if>
                            <i class="fa-solid fa-truck" style="color: #767779;"></i>
                        </div>
                        <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; text-align: center;">발송완료</p>
                        <h5 class="font-size-30 mt-0 pt-1" style="font-size: 15px; text-align: center;" > 상품발송이 완료되어
                            배송추적 가능 단계</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- section2(customer info) End -->
    <div style=" margin: 30px auto;">
        <div>
            <h4><i class="fa-regular fa-address-card" style="color: #2a2b2c; margin-right: 15px;"></i>주문자정보</h4>
        </div>
        <div class="col-md-12" style="display: flex;border-top: 2px solid darkgray; padding-top: 30px; border-bottom: 2px dashed lightgray;">
            <table class="table">
                <tbody>
                <tr>
                    <th scope="row">받는 분 </th>
                    <td>김이름</td>
                </tr>
                <tr>
                    <th scope="row">전화번호 </th>
                    <td>010-1111-2222</td>
                </tr>
                <tr>
                    <th scope="row">배송지</th>
                    <td>강원특별자치도 퇴계동 913-7 3층</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- section3(delivery info) End -->
    <div style=" margin: 30px auto;">
        <div>
            <h4><i class="fa-solid fa-truck" style="color: #2c2c2d; margin-right: 15px;"></i>배송정보</h4>
        </div>
        <div class="col-md-12" style="display: flex;border-top: 2px solid darkgray; padding-top: 30px; border-bottom: 2px dashed lightgray;">
            <table class="table">
                <tbody>
                <tr>
                    <th scope="row">송장번호 </th>
                    <td>10-22-3-44235261</td>
                </tr>
                <tr>
                    <th scope="row">배송회사 </th>
                    <td>한신택배</td>
                </tr>
                <tr>
                    <th scope="row">배달기사 번호</th>
                    <td>010-1111-2222</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>