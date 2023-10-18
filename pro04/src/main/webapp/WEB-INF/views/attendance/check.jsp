<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>출석 체크</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>
        .popup-wrapper {
            position: fixed;
            z-index: 100;
            top: 50%;
            margin-top: -250px;
            left: 50%;
            margin-left: -250px;
        }
        .popup {
            position: relative;
            background-image: url("${path}/resources/images/attendPoint.png");
            background-size: cover;
            border-radius: 20px;
            box-shadow: 5px 5px 10px #555;
            padding: 20px;
            text-align: center;
            width: 500px;
            height: 500px;
        }
        .close-btn {
            position: absolute;
            background-color: transparent;
            border: none;
            right: 20px;
            top: 20px;
        }
        .info {
            margin-top: 20px;
        }
        .point {
            line-height: 100px;
            font-family: "Roboto", sans-serif;
            color: #007cf0;
            font-weight: bold;
        }
    </style>
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2>출석 체크</h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->
<section class="album-catagory section-padding-100-0">
    <div class="container">
        <div class="col-md-7" style="margin: 0 auto">
            <div class="container is-max-desktop has-text-centered">
                <h3 class="mb-20" style="font-family:'Roboto', sans-serif; font-weight: bold"> ${calendarInfo.month}월 출석 <i class="fa-regular fa-calendar"></i> </h3>
                <h4 class="mb-40" style="font-family: 'Poppins', sans-serif;color: #007cf0;font-weight: bold;"> 출석체크하고 포인트 받자 <i class="fa-solid fa-face-laugh-squint fa-bounce"></i> </h4>
                <c:forEach var="i" begin="0" end="5">
                    <div class="columns">
                        <c:forEach var="j" begin="0" end="6">
                            <c:set var="date" value="${(7 * i + j) - (calendarInfo.startDayOfWeek - 1)}"></c:set>
                            <c:if test="${date < 1 or date > calendarInfo.endDay}">
                                <div class="column m-1 rounded-lg" style="height: 80px;"></div>
                            </c:if>
                            <c:if test="${date > 0 and date <= calendarInfo.endDay and !fn:contains(list, ' '+=date+=' ')}">
                                <div class="column m-1 rounded-lg" style="height: 80px; background-color: #DDD;">
                                    <h5 style="font-family: sans-serif"> ${date} </h5>
                                </div>
                            </c:if>
                            <c:if test="${date > 0 and date <= calendarInfo.endDay and fn:contains(list, ' '+=date+=' ')}">
                                <div class="column m-1 rounded-lg" style="height: 80px; background-color: #A2B29F">
                                    <h5 style="font-family: sans-serif"> ${date} </h5>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </c:forEach>

                <!-- 오늘 이미 출석체크를 했다면 버튼 비활성화 -->
                <div class="has-text-centered">
                    <c:if test="${attendChk}">
                        <button type="button" class="button is-info is-rounded is-large" disabled> 출석체크 완료 </button>
                    </c:if>
                    <!-- 오늘 출석체크를 하지 않았다면 버튼 활성화 -->
                    <c:if test="${!attendChk}">
                        <a href="${path}/attendance/addAttend" class="button is-info is-rounded is-large"> 출석체크 </a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 푸터 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 끝 -->
</body>
</html>
