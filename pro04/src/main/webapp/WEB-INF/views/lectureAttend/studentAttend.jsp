<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 나의 출결정보 </title>
    <jsp:include page="../layout/head.jsp" />
    <c:if test="${(not empty attendList) and (attendList[0].atype eq '코드오류')}">
        <script type="text/javascript">
            alert("출석이 정상적으로 처리되지 않았습니다. 다시 시도해주세요.");
        </script>
    </c:if>
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2> 나의 출결정보 </h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->

<section class="contact-area section-padding-100 mt-100 pb-0">
    <div class="container pl-5 pr-5 text-center">
        <div class="section-heading white wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
            <p> 오프라인 강의 출석하기 </p>
            <h2 class="text-dark"> ${lecture.lname} </h2>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="contact-form-area">
                    <form action="${path}/lectureAttend/studentAttend" method="post">
                        <div class="row w-75" style="margin: 0 auto">
                            <div class="col-lg-8 col-md-12 form-group wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                <input type="text" class="form-control text-center" id="attendCode" name="attendCode" placeholder="출결코드를 입력해주세요" autocomplete="off" autofocus>
                                <input type="hidden" name="lcode" id="lcode" value="${lecture.lcode}">
                            </div>
                            <div class="col-lg-4 col-md-12 wow fadeInUp text-right" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                <button class="btn oneMusic-btn w-100" type="submit"> Send <i class="fa fa-angle-double-right"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="contact-area section-padding-100 mb-100 pb-0">
    <div class="container text-center">

    </div>
</section>
<section class="contact-area section-padding-100 mb-100">
    <div class="container text-center">
        <table class="table table-hover">
            <thead>
            <tr>
                <td width="30%"> 출석체크 일자 </td>
                <td width="30%"> 출석체크 시간 </td>
                <td> 출결 현황 </td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="attend" items="${attendList}">
                <tr>
                    <td> ${attend.adate} </td>
                    <td>
                        <c:if test="${attend.atime eq '00:00:00'}"> - </c:if>
                        <c:if test="${attend.atime ne '00:00:00'}"> ${attend.atime} </c:if>
                    </td>
                    <td> ${attend.atype} </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<jsp:include page="../layout/footer.jsp" />

</body>
</html>
