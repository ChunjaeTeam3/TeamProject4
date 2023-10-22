<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강의실</title>
    <jsp:include page="../layout/head.jsp"/>

</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2>수강신청</h2>
    </div>
</section>
<section class="course_details_area section_gap">
    <div class="container">
        <br>
        <br>
        <br>
        <div class="card shadow-2-strong" style="background-color: #f5f7fa;">
            <div class="card-body p-0">
                <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true" style="position: relative; height: 350px;">
                    <table class="table table-dark mb-0">
                        <thead style="background-color: #393939;">
                        <tr class="text-uppercase text-success">
                            <th scope="col">강의명</th>
                            <th scope="col">가격</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">${lecture.lname}</th>
                            <td>${lecture.lprice} 포인트</td>
                        </tr>
                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                        <tr style="background-color: white;color: black;">
                            <td> 보유한 포인트 </td>
                            <td> ${user.pt} 포인트 </td>
                        </tr>

                        <c:if test="${lecture.lprice gt user.pt}">
                            <input hidden="hidden" value="${lecture.lcode}" id="lcode4">
                            <tr class="table-danger">
                                <td class="text-black font-weight-bold"><strong> 총 금액 </strong></td>
                                <td class="text-black font-weight-bold" style="color: red;"><strong> ${lecture.lprice} 포인트 </strong></td>
                            </tr>
                        </c:if>
                        <c:if test="${lecture.lprice lt user.pt}">
                            <tr class="table-primary">
                                <td class="text-black font-weight-bold"><strong> 총 금액 </strong></td>
                                <td class="text-black font-weight-bold"><strong> ${lecture.lprice} 포인트 </strong></td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                    <div class="form-group">
                        <c:if test="${lecture.lprice lt user.pt}">
                            <button class="btn btn-outline-dark btn-lg py-3 btn-block" onclick="window.location='${path}/lecture/registerInsert2?lcode=${lecture.lcode}'"> 수강신청하기 </button>
                        </c:if>
                        <c:if test="${lecture.lprice gt user.pt}">
                            <button class="btn btn-outline-dark btn-lg py-3 btn-block" onclick="javascript: alert('보유한 포인트가 부족합니다.')" disabled> 수강신청하기 </button>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>