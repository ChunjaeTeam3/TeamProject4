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
    <title>로그인</title>
    <jsp:include page="../layout/head.jsp"/>
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2>Login</h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->
<!-- 로그인 시작 -->
<section class="login-area section-padding-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-8">
                <div class="login-content">
                    <h3>어서오세요<i class="fa-solid fa-face-smile fa-bounce"></i></h3>
                    <!-- Login Form -->
                    <div class="login-form">
                        <form action="${path}/user/login" method="post">
                            <div class="form-group">
                                <label for="id">아이디</label>
                                <input type="text" class="form-control" id="id" aria-describedby="emailHelp" placeholder="아이디를 입력해주세요" value="${cookie.userID.value}">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault" checked>
                                    <label class="form-check-label" for="flexSwitchCheckDefault"><i class="fa fa-lock mr-2"></i>아이디 저장하기</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password">비밀번호</label>
                                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요">
                            </div>
                            <button type="submit" class="btn oneMusic-btn mt-30">로그인</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 로그인 끝 -->
<!-- 푸터 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 끝 -->
</body>
</html>
