<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 강의관리 </title>
    <jsp:include page="../layout/head.jsp"></jsp:include>
    <!-- 관리자 페이지 스타일 적용 -->
    <link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- ckEditor 적용 -->
    <script type="text/javascript" src="${path}/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
<div id="wrapper">
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${path}/">
            <div class="sidebar-brand-icon">
                <img src="${path}/resources/img/logo2.png" alt="해법 로고 이미지" style="width: 110px">
            </div>
        </a>
        <hr class="sidebar-divider my-0">
        <li class="nav-item">
            <a class="nav-link" href="${path}/admin/dashboard">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
        </li>
        <hr class="sidebar-divider">
        <div class="sidebar-heading">
            Management
        </div>
        <li class="nav-item">
            <a class="nav-link" href="${path}/admin/userMgmt">
                <i class="fa-solid fa-user"></i>
                <span> 회원관리 </span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${path}/admin/qnaMgmt">
                <i class="fa-solid fa-circle-question"></i>
                <span> 고객지원관리 </span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fa-solid fa-video"></i>
                <span> 강의관리 </span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header"> Lecture: </h6>
                    <a class="collapse-item" href="${path}/admin/lectureMgmt"> 강의목록 </a>
                    <a class="collapse-item" href="${path}/admin/closeLectureMgmt"> 폐강관리 </a>
                    <a class="collapse-item" href="${path}/admin/lectureInsert"> 강의등록 </a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
               aria-expanded="true" aria-controls="collapseThree">
                <i class="fa-solid fa-chalkboard-user"></i>
                <span> 강사관리 </span>
            </a>
            <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header"> Teacher: </h6>
                    <a class="collapse-item" href="${path}/admin/teacherMgmt"> 강사목록 </a>
                    <a class="collapse-item" href="${path}/admin/teacherInsert"> 강사등록 </a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour"
               aria-expanded="true" aria-controls="collapseFour">
                <i class="fa-solid fa-globe"></i>
                <span> 커뮤니티관리 </span>
            </a>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header"> Community: </h6>
                    <a class="collapse-item" href="${path}/admin/filterMgmt"> 필터링 단어 관리 </a>
                    <a class="collapse-item" href="${path}/admin/boardMgmt"> 규칙 위반 게시글 </a>
                </div>
            </div>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive"
               aria-expanded="true" aria-controls="collapseFive">
                <i class="fa-solid fa-gift"></i>
                <span> 이벤트관리 </span>
            </a>
            <div id="collapseFive" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header"> Event: </h6>
                    <a class="collapse-item" href="${path}/admin/eventMgmt"> 이벤트 목록 </a>
                    <a class="collapse-item" href="${path}/admin/winner"> 당첨자 추첨 </a>
                </div>
            </div>
        </li>

        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
    </ul>

    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <ul class="navbar-nav ml-auto">
                    <div class="topbar-divider d-none d-sm-block"></div>

                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"> 안녕하세요, 관리자님 </span>
                            <img class="img-profile rounded-circle"
                                 src="${path}/resources/img/adminProfile.svg">
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="container mt-100 mb-100">
                <h2> ${lecture.lname} 커리큘럼 등록 <i class="fa-solid fa-feather"></i> </h2>
                <form action="${path}/admin/curriculumInsert" method="post" enctype="multipart/form-data">
                    <div class="form-group mt-3 text-right">
                        <button type="button" class="btn btn-outline-danger" id="addInput"> 입력창 추가하기 </button>
                        <input type="hidden" name="lcode" id="lcode" value="${lecture.lcode}">
                    </div>
                    <div id="curriculum-wrap">
                        <!-- 오프라인 강의인 경우 -->
                        <c:if test="${lecture.state eq 'off'}">
                            <!-- 이미 등록된 커리큘럼이 있는 경우 리스트 출력 (수정은 불가) -->
                            <c:forEach var="curr" items="${curriculumList}" varStatus="status">
                                <div class="row curriculum" value="${status.index + 1}">
                                    <div class="col-1 mt-4">
                                        <h5 class="mt-25 text-center"> ${status.index + 1}강 </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mt-3">
                                            <input type="text" name="cname" id="cname${status.index + 1}" class="form-control" placeholder="커리큘럼명을 입력해주세요" value="${curr.cname}" disabled>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="row curriculum" value="${fn:length(curriculumList) + 1}">
                                <div class="col-1 mt-4">
                                    <h5 class="mt-25 text-center"> ${fn:length(curriculumList) + 1}강 </h5>
                                </div>
                                <div class="col">
                                    <div class="form-group mt-3">
                                        <input type="text" name="cname" id="cname1" class="form-control" placeholder="커리큘럼명을 입력해주세요" autocomplete="off" required>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <!-- 온라인 강의인 경우 -->
                        <c:if test="${lecture.state eq 'on'}">
                            <!-- 이미 등록된 커리큘럼이 있는 경우 리스트 출력 (수정은 불가) -->
                            <c:forEach var="curr" items="${curriculumList}" varStatus="status">
                                <div class="row curriculum" value="${status.index + 1}">
                                    <div class="col-1 mt-4">
                                        <h5 class="mt-25 text-center"> ${status.index + 1}강 </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mt-3">
                                            <input type="text" name="cname" id="cname${status.index + 1}" class="form-control" placeholder="커리큘럼명을 입력해주세요" value="${curr.cname}" disabled>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="custom-file mt-3">
                                            <input type="file" name="upfile" class="custom-file-input" id="customFile${status.index + 1}" onchange="chk_file_type(this)" disabled>
                                            <label class="custom-file-label" id="file-label${status.index + 1}" for="customFile${status.index + 1}"> 업로드된 강의는 수정할 수 없습니다 </label>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="row curriculum" value="${fn:length(curriculumList) + 1}">
                                <div class="col-1 mt-4">
                                    <h5 class="mt-25 text-center"> ${fn:length(curriculumList) + 1}강 </h5>
                                </div>
                                <div class="col">
                                    <div class="form-group mt-3">
                                        <input type="text" name="cname" id="cname${fn:length(curriculumList) + 1}" class="form-control" placeholder="커리큘럼명을 입력해주세요" autocomplete="off" required>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="custom-file mt-3">
                                        <input type="file" name="upfile" class="custom-file-input" id="customFile${fn:length(curriculumList) + 1}" onchange="chk_file_type(this)" required>
                                        <label class="custom-file-label" id="file-label${fn:length(curriculumList) + 1}" for="customFile${fn:length(curriculumList) + 1}"> 강의영상 선택 </label>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                    <div class="text-right mt-3">
                        <button type="submit" class="btn btn-dark"> 등록하기 </button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(() => {
        // 커리큘럼 추가 버튼 클릭 시 input 값 추가하기
        $("#addInput").click(() => {
            let idx = parseInt($(".curriculum:last-child").attr("value")) + 1;
            <c:if test="${lecture.state eq 'off'}">
            $("#curriculum-wrap").append('<div class="row curriculum" value="' + idx + '"><div class="col-1 mt-4"><h5 class="mt-25 text-center"> ' + idx + '강 </h5></div>' +
                '<div class="col"><div class="form-group mt-3">' +
                '<input type="text" name="cname" id="cname' + idx + '" class="form-control" placeholder="커리큘럼명을 입력해주세요" autocomplete="off" required> </div></div> </div>');
            </c:if>
            <c:if test="${lecture.state eq 'on'}">
            $("#curriculum-wrap").append('<div class="row curriculum" value="' + idx + '"><div class="col-1 mt-4"><h5 class="mt-25 text-center">' + idx + '강 </h5></div>' +
                '<div class="col"><div class="form-group mt-3">' +
                '<input type="text" name="cname" id="cname2" class="form-control" placeholder="커리큘럼명을 입력해주세요" autocomplete="off" required></div></div>' +
                '<div class="col-4"><div class="custom-file mt-3">' +
                '<input type="file" name="upfile" class="custom-file-input" id="customFile' + idx + '" onchange="chk_file_type(this)"><label class="custom-file-label" id="file-label' + idx + '" for="customFile' + idx + '"> 강의영상 선택 </label> ' +
                '</div></div></div>');

            // 파일 선택 시 파일 이름이 나오도록 처리하는 로직도 추가
            let id = "#customFile" + idx;
            $(id).on("change", () => {
                let fileName = '';
                let fileLength = $(id)[0].files.length;
                if(fileLength > 1) {
                    fileName = fileLength + "개의 파일";
                } else {
                    fileName = $(id).val().split("\\").pop();
                }
                $("#file-label" + idx).text("선택한 파일 : " + fileName);
            });
            </c:if>
        });

        // 파일 선택 시 파일 이름이 나오도록 처리
        $("#customFile${fn:length(curriculumList) + 1}").on("change", () => {
            let fileName = '';
            let fileLength = $("#customFile${fn:length(curriculumList) + 1}")[0].files.length;
            if(fileLength > 1) {
                fileName = fileLength + "개의 파일";
            } else {
                fileName = $("#customFile${fn:length(curriculumList) + 1}").val().split("\\").pop();
            }
            $("#file-label${fn:length(curriculumList) + 1}").text("선택한 파일 : " + fileName);
        });
    });
</script>

<jsp:include page="../layout/footer.jsp"/>

<script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="${path}/resources/js/sb-admin-2.min.js"></script>
</body>
</html>