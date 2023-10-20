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
    <title>강의실</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>
        #gotoTab {
            width: 100%; /* 너비를 100%로 설정 */
            /*height: 200px; *//* 원하는 높이로 설정 */
            /* 다른 스타일 속성 추가 가능 */
        }
        .tabmenu {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            position: relative;
            width: calc(100% - 1px);
            margin-top: 2.5rem;
            -ms-flex-wrap: nowrap;
            flex-wrap: nowrap;
        }
    </style>
    <style>
        .nav-pills .nav-link {
            background-color: #fff; /* 비활성화된 탭의 배경 색상 */
            color: #343a40; /* 비활성화된 탭의 텍스트 색상 */
        }

        tab-pane fade show active {
            padding: 20px; /* 원하는 패딩 크기로 조정 */
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
        <h2>강의실</h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->
<section class="album-catagory section-padding-100-0">
    <!-- 검색 엔진 시작 -->
    <div class="container">
        <!-- 모든강좌정보  -->
        <section>
            <div class="row">
                <div class="col-md-2 img">
                    <img src="${path}/resources/img/teacher/an.png" alt="사진"/>
                </div>
                <div class="col-md-10 cont_wrap">
                    <div class="txt_area">
                        <h7 class="tit">강사: ${teacher.tname}</h7>
                        <h6 class="tit">${lecture.lname}</h6><br>
                        <h8>수강인원 : 남은수강인원/${lecture.maxStudent}</h8><br>
                        <h8>교재: 수능특강</h8>
                        <h9>다운로드</h9><br>
                        <span>신청기간 ${lecture.sdate} ~ 종료기간 ${lecture.edate}</span>
                        <a href="${path}/register/insert.do?lcode=${lecture.lcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                        <div>
                            <h3>강사 소개</h3>
                            <a href="${path}/teacher/intro?tcode=${teacher.tcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="menu" class="content-section" style="clear: both;">
            <div class="tabmenu2_wrap" id="gotoTab" style="align-items: center;">
                <ul class="nav nav-pills" id="cdTabMnuArea" style="display: flex; align-self: center; margin-left: 250px; ">
                    <li class="nav-item"  style="text-align: center;width: 150px;">
                        <button class="nav-link active" id="intro-tab" data-bs-toggle="tab" data-bs-target="#intro" type="button" role="tab" aria-controls="intro"
                                aria-selected="true"  onclick="ReloadPage()" style="width: 150px;font-size: 20px;text-align: center;">강의 소개</button>
                    </li>
                    <li class="nav-item"  style="text-align: center;width: 150px;">
                        <button class="nav-link" id="video-tab" data-bs-toggle="tab" data-bs-target="#video" type="button" role="tab" aria-controls="intro"
                                aria-selected="true"  onclick="ReloadPage()" style="width: 150px;font-size: 20px;text-align: center;">강의 목차</button>
                    </li>
                    <li class="nav-item"  style="text-align: center;width: 150px;">
                        <button class="nav-link" id="board-tab" data-bs-toggle="tab" data-bs-target="#board" type="button" role="tab" aria-controls="intro"
                                aria-selected="true"  onclick="ReloadPage()" style="width: 150px;font-size: 20px;text-align: center;">질문 게시판</button>
                    </li>
                    <li class="nav-item"  style="text-align: center;width: 150px;">
                        <button class="nav-link" id="star-tab" data-bs-toggle="tab" data-bs-target="#star" type="button" role="tab" aria-controls="intro"
                                aria-selected="true"  onclick="ReloadPage()" style="width: 150px;font-size: 20px;text-align: center;">수강후기</button>
                    </li>
                </ul>
                <!-- 내용 -->
                <div class="container">
                    <div class="tab-content" id="content">
                        <div class="tab-pane fade show active" id="intro" role="tabpanel" aria-labelledby="intro-tab">
                            <br>
                            <br>
                            <div class="border" style="height: 250px;width: 1050px;margin-top: 3px;margin-left: 15px;">
                            ${lecture.lcontent}
                            </div>
                        </div>

                        <div class="tab-pane fade" id="video" role="tabpanel" aria-labelledby="video-tab">
                            <div class="container mt-5">
                                <ul class="list-group thumb_list_wrap">
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-md-2 img">
                                                <img src="${path}/resources/img/teacher/an.png" alt="사진"/>
                                            </div>
                                            <div class="col-md-10 cont_wrap">
                                                <div class="txt_area">
                                                    <h7 class="tit">강사: ${lecture.tname}</h7>
                                                    <h6 class="tit"><a href="${path}/lecture/detail.do?lcode=${lecture.lcode}">수학강의제목2</a></h6><br>
                                                    <h8>수강인원 ${lecture.maxStudent}명</h8><br>
                                                    <h8>교재: 수능특강</h8><br>
                                                    <h9>다운로드</h9><br>
                                                    <span>신청기간 ~ 종료기간</span>
                                                    <a href="${path}/register/insert.do?lcode=${lecture.lcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-md-2 img">
                                                <img src="${path}/resources/img/teacher/an.png" alt="사진"/>
                                            </div>
                                            <div class="col-md-10 cont_wrap">
                                                <div class="txt_area">
                                                    <h7 class="tit">강사: 안유진</h7>
                                                    <h6 class="tit"><a href="${path}/lecture/detail.do?lcode=${lecture.lcode}">수학강의제목2</a></h6><br>
                                                    <h8>수강인원 10명</h8><br>
                                                    <h8>교재: 수능특강</h8><br>
                                                    <h9>다운로드</h9><br>
                                                    <span>신청기간 ~ 종료기간</span>
                                                    <a href="${path}/lecture/register?lcode=${lecture.lcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-md-2 img">
                                                <img src="${path}/resources/img/teacher/an.png" alt="사진"/>
                                            </div>
                                            <div class="col-md-10 cont_wrap">
                                                <div class="txt_area">
                                                    <h7 class="tit">강사: 안유진</h7>
                                                    <h6 class="tit"><a href="${path}/lecture/detail?lcode=${lecture.lcode}">수학강의제목2</a></h6><br>
                                                    <h8>수강인원 10명</h8><br>
                                                    <h8>교재: 수능특강</h8><br>
                                                    <h9>다운로드</h9><br>
                                                    <span>신청기간 ~ 종료기간</span>
                                                    <a href="${path}/register/insert.do?lcode=${lecture.lcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>


                        <div class="tab-pane fade" id="board" role="tabpanel" aria-labelledby="board-tab">
                            <div class="col-xl-4 col-md-6 float-right mb-20"  style="z-index: 10">
                                <form action="${path}/lecBoard/list" method="get" >
                                    <div class="form-group ">
                                        <div class="input-group-append">
                                            <div class="panel single-accordion" style="border: 1px solid #ced4da; border-radius: 0.25rem;">
                                                <select id="type" name="type" class="collapseOne" style="border: none;padding: 8px;">
                                                    <option value="T" > 제목 </option>
                                                    <option value="C"> 내용 </option>
                                                    <option value="W"> 작성자 </option>
                                                </select>
                                            </div>
                                            <input type="text" name="keyword" class="form-control" placeholder="검색하기" aria-describedby="project-search-addon" />
                                            <input class="btn btn-dark" type="submit" id="project-search-addon" value="검색"/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="container">
                                <!-- 테이블 영역 시작 -->
                                <div class="col-12 mb-5">
                                    <div class="card w-100">
                                        <div class="card-body">
                                            <div class="table-responsive project-list">
                                                <table class="table project-table table-centered table-nowrap">
                                                    <thead>
                                                    <tr>
                                                        <th scope="col" class="text-center" style="width: 10%">#</th>
                                                        <th scope="col">제목</th>
                                                        <th scope="col" class="text-center" style="width: 15%">작성자</th>
                                                        <th scope="col" class="text-center" style="width: 15%">작성일</th>
                                                    </tr>
                                                    </thead>

                                                    <tbody>
                                                    <c:forEach items="${lecBoardList }" var="list" varStatus="status">

                                                        <tr class="table-hover">
                                                            <input type="hidden" value="${list.qno}">
                                                            <th class="text-center">${status.count}</th>
                                                            <th>
                                                                <!-- 로그인 하지 않았을 때 -->
                                                                <c:if test="${empty sid}">
                                                                    <!-- 질문 글 -->
                                                                    <c:if test="${list.lev eq 0}">
                                                                        ${list.title}
                                                                    </c:if>
                                                                    <!-- 답변 글 -->
                                                                    <c:if test="${list.lev eq 1}">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;⌞${list.title}
                                                                    </c:if>
                                                                </c:if>
                                                                <!-- 로그인 했을 때 -->
                                                                <c:if test="${!empty sid}">
                                                                    <!-- 질문 글 -->
                                                                    <c:if test="${list.lev eq 0}">
                                                                        <a href="${path}/lecBoard/detail?qno=${list.qno}&page=${curPage}">${list.title}</a>
                                                                    </c:if>
                                                                    <!-- 답변 글 -->
                                                                    <c:if test="${list.lev eq 1}">
                                                                        <a href="${path}/lecBoard/detail?qno=${list.qno}&page=${curPage}">&nbsp;&nbsp;&nbsp;&nbsp;⌞${list.title}</a>
                                                                    </c:if>
                                                                </c:if>
                                                            </th>
                                                            <th class="text-center">${list.author}</th>
                                                            <th class="text-center">
                                                                <fmt:parseDate value="${list.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                                                                <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                                                            </th>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:if test="${empty lecBoardList}">
                                                        <tr>
                                                            <td colspan="6" class="text-center"> 질문 및 답변이 없습니다.</td>
                                                        </tr>
                                                    </c:if>
                                                    </tbody>
                                                </table>
                                                <!-- 페이지 시작 -->
                                                <div class="oneMusic-pagination-area wow">
                                                    <ul class="pagination justify-content-center mb-0">
                                                        <c:if test="${curPage > 5}">
                                                            <li class="page-item">
                                                                <a href="${path}/lecBoard/list?page=${page.blockStartNum - 1}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                                                   class="page-item"><i class="fa-solid fa-arrow-left"></i></a>
                                                            </li>
                                                        </c:if>
                                                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                                                            <c:choose>
                                                                <c:when test="${i == curPage}">
                                                                    <li class="page-item active">
                                                                        <a href="${path}/lecBoard/list?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                                                           class="page-link" aria-label="Page ${i}"
                                                                           aria-current="page">${i}</a>
                                                                    </li>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <li  class="page-item">
                                                                        <a href="${path}/lecBoard/list?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                                                           class="page-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                                                                    </li>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                        <c:if test="${page.blockLastNum < page.totalPageCount}">
                                                            <li class="page-item">
                                                                <a href="${path}/lecBoard/list?page=${page.blockLastNum + 1}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                                                   class="page-link"><i class="fa-solid fa-arrow-right"></i></a>
                                                            </li>
                                                        </c:if>
                                                    </ul>
                                                </div>
                                                <!-- 페이지 끝 -->
<%--                                                <c:if test="${!empty sid && sid != 'admin'}">--%>
                                                    <div class="btn float-right mt-10">
                                                        <button onclick="openWritePage()" class="btn btn-outline-dark">글쓰기</button>
                                                    </div>
<%--                                                </c:if>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="star" role="tabpanel" aria-labelledby="star-tab">

                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
<jsp:include page="../layout/footer.jsp"/>
</body>


<script>
    let originalContent = null; // 모달의 초기 내용을 저장할 변수
    originalContent = $("#board").html();
    // 모달의 초기 내용을 저장
</script>
<script>
    let key = "${param.key}";
    console.log(key);

    // 모든 탭 엘리먼트에서 'active' 클래스를 제거합니다.
    $(" #video-tab, #board-tab, #star-tab").removeClass("active");

    // 모든 탭 내용 엘리먼트에서 'show active' 클래스를 제거합니다.
    $(" #video, #board, #star").removeClass("show active");

    if(key === "intro"){
        $("#intro-tab").addClass("active");
        $("#intro").addClass("show active");
    } else if(key === "video") {
        $("#video-tab").addClass("active");
        $("#video").addClass("show active");
    } else if(key === "board") {
        $("#board-tab").addClass("active");
        $("#board").addClass("show active");
    } else if(key === "star") {
        $("#star-tab").addClass("active");
        $("#star").addClass("show active");
    }
</script>
<script>
    function openWritePage() {
        // AJAX 요청을 사용하여 글쓰기 페이지를 로드합니다.
        $.ajax({
            url: "${path}/lecBoard/questionInsert?lcode=${lecture.lcode}", // 글쓰기 페이지의 URL을 여기에 넣어주세요.
            type: "GET", // GET 요청 사용
            success: function (data) {
                console.log("성공")
                // 성공적으로 글쓰기 페이지를 불러왔을 때 실행되는 콜백 함수
                // data는 글쓰기 페이지의 HTML 내용을 포함하고 있습니다.
                $("#board").html(data); // 모달의 내용으로 페이지 내용을 삽입
            },
            error: function (error) {
                console.log("에러다에러"+error.responseText)
            }
        });
    }
</script>

<script>
    function ReloadPage() {
        if (originalContent !== null) {
            $("#board").html(originalContent);
        }
    }
</script>
<script>
    function backback() {
        $("#board").html(originalContent);
    }
</script>
</html>

