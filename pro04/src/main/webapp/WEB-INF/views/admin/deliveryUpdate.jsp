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
    <title> 배송관리 </title>
    <jsp:include page="../layout/head.jsp"></jsp:include>
    <!-- 관리자 페이지 스타일 적용 -->
    <link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
</head>
<body>
<div id="wrapper">
    <jsp:include page="../layout/adminSidebar.jsp" />
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

            <div class="container-md p-5 mt-5">
                <h4 class="mb-2"> 주문 정보 </h4>
                <div class="border p-4">
                    <div class="row">
                        <div class="form-outline mb-4 col col-3">
                            <input type="text" name="del_no" class="form-control form-control"value="${delivery.del_no}" readonly />
                            <label class="form-label" for="title"> 배송번호 </label>
                        </div>

                        <div class="form-outline mb-4 col col-9">
                            <input type="text" id="title" name="title" class="form-control form-control" value="${delivery.title}" readonly />
                            <label class="form-label" for="title"> 상품명 </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-outline mb-4 col col-6">
                            <input type="text" class="form-control" id="cus_id" name="cus_id" value="${delivery.custom_id}" readonly>
                            <label for="cus_id" class="form-label"> 주문자 ID </label>
                        </div>
                        <div class="form-outline mb-4 col col-6">
                            <input type="text" class="form-control" id="cus_tel" name="cus_tel" value="${delivery.cus_tel}" readonly>
                            <label for="cus_tel" class="form-label"> 주문자 전화번호 </label>
                        </div>
                    </div>
                    <div class="form-outline">
                        <input class="form-control form-control" type="text" name="cus_addr" id="cus_addr" value="${delivery.del_addr}" readonly>
                        <label for="cus_addr" class="form-label"> 배송지주소 </label>
                    </div>
                </div>
        </div>

            <h4 class="mt-5 mb-2"> 배송 정보 </h4>
            <form name="frm1" id="frm1" action="${path}/deliveryUpdate" method="post" class="border p-4">
                <div class="row">
                    <div class="form-outline mb-4 col col-4">
                        <input type="hidden" id="dno" name="dno" value="${delivery.dno}">
                        <input type="date" id="resdate" name="resdate" class="form-control" value="${delivery.resdate}" readonly />
                        <label class="form-label" for="resdate"> 결제일 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <input type="date" id="ddate" name="ddate" class="form-control" value="${delivery.ddate}" readonly />
                        <label class="form-label" for="ddate"> 배송시작일 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <input type="date" id="res_date" name="edate" class="form-control" value="${delivery.edate}" required />
                        <label class="form-label" for="res_date"> 배송예정일 </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-outline mb-4 col col-4">
                        <input type="text" class="form-control" id="dcom" name="dcom" value="${delivery.dcom}" required>
                        <label for="dcom" class="form-label"> 배송사 </label>
                    </div>
                    <div class="form-outline mb-4 col col-8">
                        <input type="text" class="form-control" id="dtel" name="dtel" value="${delivery.dtel}" required>
                        <label for="dtel" class="form-label"> 배송기사 전화번호 </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-outline mb-4 col col-8">
                        <input class="form-control" type="text" name="dcode" id="dcode" value="${delivery.dcode}" required>
                        <label for="dcode" class="form-label"> 송장번호 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <select class="form-control" name="dstatus" id="dstatus">
                            <c:forEach var="state" items="${state_list}" varStatus="status">
                                <c:if test="${delivery.current_state eq state}">
                                    <option value="${status.index}" selected> ${state} </option>
                                </c:if>
                                <c:if test="${delivery.current_state ne state}">
                                    <option value="${status.index}"> ${state} </option>
                                </c:if>
                            </c:forEach>
                        </select>
                        <label for="dstatus" class="form-label"> 배송상태 </label>
                    </div>
                </div>

                <div class="d-flex justify-content-center mt-4">
                    <button type="submit" class="btn btn-dark btn-block btn-lg gradient-custom-4"> 배송정보 수정 </button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 푸터 영역 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>