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
    <title>로그인</title>
    <jsp:include page="../layout/head.jsp"/>
</head>
<body>
<!-- header Start -->
<jsp:include page="../layout/header.jsp" />
<!-- header End -->

<!-- banner Start -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url(${paht}/resources/img/bg-img/breadcumb3.jpg);">
    <div class="bradcumbContent">
        <p>See what’s new</p>
        <h2>Login</h2>
    </div>
</section>
<!-- banner End -->

<!--login Start-->
<section class="login-area section-padding-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-8">
                <div class="login-content">
                    <h3>Welcome Back</h3>
                    <!-- Login Form -->
                    <div class="login-form">
                        <form action="${path}/user/login" method="post" name="login">
                            <div class="form-group">
                                <label for="id">ID</label>
                                <input type="text" class="form-control" id="id" name="id" value="${cookie.userID.value}" placeholder="아이디 입력">
                            </div>
                            <div class="field has-text-left">
                                <label class="checkbox">
                                    <input type="checkbox" name="saveId" value="save" ${checked}> 아이디 기억하기
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="pw">Password</label>
                                <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호 입력">
                            </div>

                            <button type="submit" class="btn oneMusic-btn mt-30">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--login End -->

<!-- footer Start -->
<jsp:include page="../layout/footer.jsp" />
<!-- footer End -->
</body>
</html>