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
    <title>마이페이지</title>
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
        <h2>마이페이지</h2>
    </div>
</section>
<!-- banner End -->

<!-- mypage Start -->
<!-- sidemenu Start -->
<div class="container-fluid d-flex justify-content-end p-0 mt-15">
    <div class="d-flex justify-content-between">
        <a class="nav-link active" aria-current="page" href="${path}/user/myPage" >${user.name} 님</a>
        <a class="nav-link" href="${path}/user/edit">내정보</a>
        <a class="nav-link" href="${path}/user/lecture">수강내역</a>
        <a class="nav-link" href="${path}/user/payment">주문/배송내역</a>
    </div>
</div>
<!--sidemenu End -->
<div class="container-lg" style="margin: 100px auto; width: 85%;">
    <!-- section1(info) Start-->
    <div class="row" style="width: 90%; margin: 150px auto;">
        <div class="col-xl-3 col-md-6"  >
            <div class="card bg-pattern">
                <div class="card-body" style="background-color: lightgray; height: 200px;">
                    <h4 class="mt-2" style="margin-bottom: 0;">${user.name}님,</h4>
                    <p class="" style="color: #000;font-weight: 500;font-size: 19px;/* line-height: 20px; */">오늘도 열공하세요!</p>
                    <button type="button" class="btn btn-dark" id="profile"><a href="/team34_war/user/edit" style="color:#fff;">프로필 수정</a></button>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6" >
            <div class="card bg-pattern">
                <div class="card-body" style="height: 200px; border: 1px solid darkgray;">
                    <div class="float-left" style=" margin-right: 10px;  font-size: 40px; width: 100%;">
                        <i class="fa-regular fa-calendar-days" style="color: #2c2d30;"></i>
                    </div>
                    <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; line-height: 20px;">출석현황</p>
                    <h5 class="font-size-30 mt-0 pt-1" style="font-size: 25px; line-height: 60px; margin-bottom: 0;" >총 ${totalAttendance}일</h5>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6" >
            <div class="card bg-pattern">
                <div class="card-body" style="height: 200px; border: 1px solid darkgray;">
                    <div class="float-left" style=" margin-right: 10px;  font-size: 40px; width: 100%;">
                        <i class="fa-solid fa-user-clock" style="color: #1e1e1f;"></i>
                    </div>
                    <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; line-height: 20px;">수강시간</p>
                    <h5 class="font-size-30 mt-0 pt-1" style="font-size: 25px; line-height: 60px; margin-bottom: 0;" >총 ${totalStudy}시간</h5>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6" >
            <div class="card bg-pattern">
                <div class="card-body" style="height: 200px; border: 1px solid darkgray;">
                    <div class="float-left" style=" margin-right: 10px;  font-size: 40px; width: 100%;">
                        <i class="fa-solid fa-pen" style="color: #2a2d32;"></i>
                    </div>
                    <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 20px; line-height: 20px;">리뷰수</p>
                    <h5 class="font-size-30 mt-0 pt-1" style="font-size: 25px; line-height: 60px; margin-bottom: 0;" >총 ${totalReview}개</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- section1(info) End -->

    <!-- section2(registerTable) Start -->
    <section class="pb-5" style="width: 85%; margin: 0 auto;">
        <h4>수강신청한 강의(<strong style="color:#545050;">${totalLecture}개</strong>)</h4>
        <div class="table-responsive project-list">
            <table class="table project-table table-centered table-nowrap text-center">
                <thead>
                <tr>
                    <th scope="col">강좌명</th>
                    <th scope="col">강사</th>
                    <th scope="col">수강기간</th>
                    <th scope="col">타입</th>
                    <th scope="col">비고</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="lecture" items="${lectureList}" >
                    <tr>
                        <td class="align-middle">${lecture.lname}</td>
                        <td class="align-middle">${lecture.tname}</td>
                        <td class="align-middle">${lecture.sdate} ~ ${lecture.edate}</td>
                        <td class="align-middle">${lecture.state}</td>
                        <td>
                            <c:if test="${lecture.state eq 'off'}">
                                <a href="${path}/lectureAttend/studentAttend?lcode=${lecture.lcode}"
                                    class="btn btn-primary">출석하기</a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty lectureList}">
                    <tr>
                        <td colspan="6" class="text-center"> 수강신청한 강의가 없습니다. </td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>


        <nav aria-label="Page navigation example" >
            <c:if test="${curPage > 5}">
                <a href="${path}/user/myPage?page=${page.blockStartNum - 1}"
                   class="page-link">Previous</a>
            </c:if>
            <c:if test="${page.blockLastNum < page.totalPageCount}">
                <a href="${path}/user/myPage?page=${page.blockLastNum + 1}" class="page-link">Next page</a>
            </c:if>

            <ul class="pagination justify-content-center">
                <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                    <c:choose>
                        <c:when test="${i == curPage}">
                            <li class="page-item">
                                <a href="${path}/user/myPage?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                   class="page-link active" aria-label="Page ${i}"
                                   aria-current="page" style="background-color: #545050; color:#FFFFFF" ;>${i}</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a href="${path}/user/myPage?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                   class="page-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ul>
        </nav>
    </section>
    <!-- section2(registertable) End -->

    <!-- section3(recentTable) Start -->
    <div class="row" style="width: 85%; margin: 0 auto;">
        <div class="row">
            <h4>수강하실 강의를 선택해주세요.</h4>
        </div>
        <div class="col-lg-10" style="width: 100%;">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Projects</th>
                                <th scope="col">Start Date</th>
                                <th scope="col">Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>New admin Design</td>
                                <td>02/5/2019</td>
                                <td>
                                    <span class="text-success font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> Completed</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- end project-list -->

                    <div class="pt-3">
                        <ul class="pagination justify-content-end mb-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section2(recentTable) End -->

</div>
<!-- mypage End -->

<!-- Footer Start -->
<jsp:include page="../layout/footer.jsp" />
<!-- Footer End -->
</body>
</html>