<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 현재 날짜 구하기 -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 출석체크 </title>
    <jsp:include page="../layout/head.jsp" />
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2> 출결 관리 </h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->

<div class="container mt-100">
    <div class="d-flex justify-content-between">
        <h4> 오프라인 강의 출결 </h4>
        <button class="btn btn-dark" disabled> 출결 기록 저장 </button>
    </div>
    <hr>
    <p> 강의명 : ${lecture.lname} &nbsp; | &nbsp; 진행 일자 : <c:out value="${today}"/> &nbsp; | &nbsp; 시작 시간 : ${lecture.stime} &nbsp; | &nbsp; 장소 : ${lecture.classroom} </p>
    <hr>
    <div class="d-flex justify-content-between align-items-baseline">
        <div>
            <span class="mr-2 text-secondary"> 자동 출결 </span>
            <button class="btn btn-outline-primary"> 출결코드 생성 </button>
        </div>
        <div>
            <span class="mr-2 text-secondary"> 일괄변경 </span>
            <button class="btn btn-primary"> 전체 출석 </button>
            <button class="btn btn-danger"> 전체 결석 </button>
        </div>
    </div>
    <table class="table table-hover text-center mt-15 mb-100">
        <thead>
        <tr>
            <td> 회원 아이디 </td>
            <td> 이름 </td>
            <td> 출석체크 일자 </td>
            <td> 출석체크 시간 </td>
            <td> 출결 현황 </td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="attend" items="${attendList}" varStatus="status">
            <tr>
                <td class="align-middle"> ${attend.id} </td>
                <td class="align-middle"> ${attend.name} </td>
                <c:if test="${empty attend.adate}">
                    <td></td>
                    <td></td>
                    <td class="align-middle">
                        <label for="attend${status.index}" class="mr-2">
                            <input type="radio" id="attend${status.index}" name="${attend.id}" value="출석"> 출석
                        </label>
                        <label for="absent${status.index}" class="mr-2">
                            <input type="radio" id="absent${status.index}" name="${attend.id}" value="결석"> 결석
                        </label>
                        <label for="tardy${status.index}" class="mr-2">
                            <input type="radio" id="tardy${status.index}" name="${attend.id}" value="지각"> 지각
                        </label>
                    </td>
                </c:if>
                <c:if test="${not empty attend.adate}">
                    <td class="align-middle"> ${attend.adate} </td>
                    <td class="align-middle"> ${attend.atime} </td>
                    <td class="d-flex align-items-center justify-content-center">
                        <c:if test="${attend.atype eq '출석'}">
                            <label for="attend${status.index}" class="mr-2">
                                <input type="radio" id="attend${status.index}" name="${attend.id}" value="출석" checked> 출석
                            </label>
                            <label for="absent${status.index}" class="mr-2">
                                <input type="radio" id="absent${status.index}" name="${attend.id}" value="결석"> 결석
                            </label>
                            <label for="tardy${status.index}" class="mr-2">
                                <input type="radio" id="tardy${status.index}" name="${attend.id}" value="지각"> 지각
                            </label>
                        </c:if>
                        <c:if test="${attend.atype eq '결석'}">
                            <label for="attend${status.index}" class="mr-2">
                                <input type="radio" id="attend${status.index}" name="${attend.id}" value="출석"> 출석
                            </label>
                            <label for="absent${status.index}" class="mr-2">
                                <input type="radio" id="absent${status.index}" name="${attend.id}" value="결석" checked> 결석
                            </label>
                            <label for="tardy${status.index}" class="mr-2">
                                <input type="radio" id="tardy${status.index}" name="${attend.id}" value="지각"> 지각
                            </label>
                        </c:if>
                        <c:if test="${attend.atype eq '지각'}">
                            <label for="attend${status.index}" class="mr-2">
                                <input type="radio" id="attend${status.index}" name="${attend.id}" value="출석"> 출석
                            </label>
                            <label for="absent${status.index}" class="mr-2">
                                <input type="radio" id="absent${status.index}" name="${attend.id}" value="결석"> 결석
                            </label>
                            <label for="tardy${status.index}" class="mr-2">
                                <input type="radio" id="tardy${status.index}" name="${attend.id}" value="지각" checked> 지각
                            </label>
                        </c:if>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- 푸터 시작 -->
<jsp:include page="../layout/footer.jsp" />
<!-- 푸터 끝 -->
</body>
</html>
