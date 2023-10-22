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

        <style>
        @keyframes click-wave{0%{height: 40px;width: 40px;opacity: 0.15;position: relative}100%{height: 200px;width: 200px;margin-left: -80px;margin-top: -80px;opacity: 0}}
        .option-input{-webkit-appearance: none;-moz-appearance: none;-ms-appearance: none;-o-appearance: none;appearance: none;position: relative;top: 10.3px;right: 0;bottom: 0;left: 0;height: 30px;width: 30px;transition: all 0.15s ease-out 0s;background: #CBD1D8;border: none;color: #fff;cursor: pointer;display: inline-block;margin-right: 0.5rem;outline: none;position: relative;z-index: 999}
        .option-input:hover{background: #9FAAB7}
        .option-input:checked{background: #3D3D3D}
        .option-input:checked::before{height: 30px;width: 30px;position: absolute;content: "\f111";font-family: "Font Awesome 5 Free";display: inline-block;font-size: 16.7px;text-align: center;line-height: 30px}
        .option-input:checked::after{-webkit-animation: click-wave 0.25s;-moz-animation: click-wave 0.25s;animation: click-wave 0.25s;background: #3D3D3D;content: '';display: block;position: relative;z-index: 100}
        .option-input.radio{border-radius: 50%}
        .option-input.radio::after{border-radius: 50%}
        .line-text span{background: #fff;padding: 0 10px;color: #212529}
        .user-images img{margin-left: -5px}
        .col-md-6 {box-shadow: 4px 4px 12px;}
        .input {width: 94%; height: 40px; border-top: none; border-left: none; border-right: none; border-bottom: 3px solid #3D3D3D;}
        .input:focus {outline: none;}
        .input2 {height: 40px; width: 7%; background-color: #3D3D3D; color: #EEEEEE; font-weight: bold; border: none; border-radius: 25%}
    </style>
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
<!--sidemenu End -->
<div class="container-lg" style="margin: 100px auto; width: 85%;">
    <!-- section1(info) Start-->
    <div class="row" style="width: 90%; margin: 150px auto;">
        <div class="col-xl-3 col-md-6"  >
            <div class="card bg-pattern">
                <div class="card-body" style="background-color: lightgray; height: 200px;">
                    <h5 class="font-size-30 mt-0 pt-1" style="font-size: 25px; line-height: 60px; margin-bottom: 0;" >${user.name}님,</h5>
                    <p class="font-size-30 mt-0 pt-1" style="color: #000;font-weight: 500; font-size: 28px; line-height: 20px;">오늘도 열공하세요!</p>
                    <button type="button" class="btn btn-dark" id="profile"><a href="${path}/user/edit" style="color:#fff;" >프로필 수정</a></button>
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
    
    <div style="display:flex;">

        <div class="col-md-8 justify-content-start">
            <!-- section2(registerTable) Start -->
            <div class="row" style="width: 85%; margin: 0 auto; padding-bottom: 50px;">
                <div>
                    <h4>수강신청한 강의를 확인해주세요.(<strong style="color:#545050;">${totalLecture}</strong>)</h4>
                </div>
                <div style="width: 100%;">
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
                                    <tr>
                                        <th scope="row">${lecture.lcode}</th>
                                        <td>${lecture.lname}</td>
                                        <td>${lecture.tname}</td>
                                        <td>${lecture.sdate} ~ ${lecture.edate}</td>
                                    </tr>
                                    </c:forEach>
                                    <c:if test="${empty myLecture}">
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- section2(registertable) End -->

            <!-- section3(recentTable) Start -->
            <div class="row" style="width: 85%; margin: 0 auto;">
                <div>
                    <h4>수강하실 강의를 선택해주세요.</h4>
                </div>
                <div style="width: 100%;">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive project-list">
                                <table class="table project-table table-centered table-nowrap">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">강좌명</th>
                                        <th scope="col">강의수</th>
                                        <th scope="col">진도율</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${progressList}" >
                                        <tr>
                                            <th scope="row">${item.lcode}</th>
                                            <td>${item.lname}</td>
                                            <td>${item.lecCnt}</td>
                                            <td>${item.progress}</td>
                                        </tr>
                                    </c:forEach>
                                    <c:if test="${empty myLecture}">
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- section3(recentTable) End -->
        </div>

        <!-- section4(todolist) Start -->
        <div class="col-lg-5 justify-content-end">
            <div class="d-flex justify-content-center row">
                <div>
                    <div class="bg-white notes">
                        <div class="flex-row align-items-center notes-title p-3">
                            <h4>TodoList<i class="fa-solid fa-feather"></i></h4>
                        </div>
                        <div class="form-group p-3 d-flex">
                            <input type="text" id="tdtitle" name="tdtitle" class="input" placeholder="내용을 입력하세요.">
                            <button id="insert" type="button" style="border: none;"><i class="fa-solid fa-square-plus fa-2xl"></i></button>
                        </div>
                    </div>
                    <div class="p-3 bg-white2 pb-4" id="todoInsert">
                        <c:forEach var="list" items="${todoList}" varStatus="status">
                            <div class="align-items-center d-flex justify-content-between" id="complete">
                                <input type="hidden" id="tdno${list.tdno }" name="tdno" value="${list.tdno}">
                                <input type="hidden" id="status" name="status" value="${list.status}">
                                <c:if test="${list.status eq 0}">
                                    <label><input type="checkbox" class="option-input radio" id="edit${list.tdno }" onclick="updateState(${list.tdno })"><span class="label-text" id="label">${list.tdtitle}</span></label>
                                </c:if>
                                <c:if test="${list.status eq 1}">
                                    <label><input type="checkbox" class="option-input radio" id="edit${list.tdno }" onclick="updateState(${list.tdno })" checked><span class="label-text" style="text-decoration-line: line-through;">${list.tdtitle}</span></label>
                                </c:if>
                                <a href="${path}/todo/delete?tdno=${list.tdno}" ><i class="fa-solid fa-trash-can fa-xl"></i></a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- section4(todolist) End -->

    </div>
</div>
<!-- mypage End -->

<!-- Footer Start -->
<jsp:include page="../layout/footer.jsp" />
<!-- Footer End -->

<!-- todoList 완료 시 체크박스 변화 -->
<script>
    // $(document).ready(function() {
    //     $("input[type=checkbox]").change(function() {
    //         if (this.checked) {
    //             $(this).next(".label-text").css("text-decoration-line", "line-through");
    //         } else {
    //             $(this).next(".label-text").css("text-decoration-line", "none");
    //         }
    //     });
    // });
</script>
<!-- insert ajax -->
<script>
    $(document).ready(function(){
        $("#insert").click(function(){
            var test = {"tdtitle":$("#tdtitle").val()}
            var txt = "";
            $.ajax({
                type: "post",
                url : "${path}/todo/insert",
                data : JSON.stringify(test),
                dataType : "json",
                contentType : "application/json",
                success : function (res){
                    console.log("성공", res);
                    console.log("내용", res[0].tdtitle);
                    for (let i in res) {
                        console.log(res[i]);
                        if (res[i].status == 0) {
                            txt = txt + "<div class='align-items-center d-flex justify-content-between' id='complete'><input type='hidden' id='tdno"+res[i].tdno+"' name='tdno' value='"+res[i].tdno+"'><input type='hidden' id='status' name='status' value='"+res[i].status+"'><label><input type='checkbox' class='option-input radio' id='edit"+res[i].tdno+"' onclick='updateState("+res[i].tdno+")'><span class='label-text' id='label'>"+res[i].tdtitle+"</span></label><a href='${path}/todo/delete?tdno="+res[i].tdno+"' ><i class='fa-solid fa-trash-can fa-xl'></i></a></div>"
                        } else {
                            txt = txt + "<div class='align-items-center d-flex justify-content-between' id='complete'><input type='hidden' id='tdno"+res[i].tdno+"' name='tdno' value='"+res[i].tdno+"'><input type='hidden' id='status' name='status' value='"+res[i].status+"'><label><input type='checkbox' class='option-input radio' id='edit"+res[i].tdno+"' onclick='updateState("+res[i].tdno+")' checked><span class='label-text' style='text-decoration-line: line-through;'>"+res[i].tdtitle+"</span></label><a href='${path}/todo/delete?tdno="+res[i].tdno+"' ><i class='fa-solid fa-trash-can fa-xl'></i></a></div>"
                        }
                    }
                    $("#todoInsert").html(txt);
                    $("#tdtitle").val("");
                },
                error: function(err){
                    console.log("실패", err)
                }
            })
        })
    })
</script>
<!-- update ajax -->
<script>
    function updateState(num) {
        var tdno = parseInt($("#tdno" + num).val());
        var test = { "tdno": tdno}
        $.ajax({
            type: "post",
            url : "${path}/todo/edit",
            data : test,
            success : function (res){
                if (res.status == 0) {
                    $("#edit" + num).next().css("text-decoration-line", "none");
                } else {
                    $("#edit" + num).next().css("text-decoration-line", "line-through");
                }
            },
            error: function(err){
                console.log("실패", err)
            }
        })
    }


</script>
</body>
</html>