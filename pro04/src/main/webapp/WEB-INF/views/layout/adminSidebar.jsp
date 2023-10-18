<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
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
