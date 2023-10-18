<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<header class="header-area">
    <!-- Navbar Area -->
    <div class="oneMusic-main-menu">
        <div class="classy-nav-container breakpoint-off">
            <div class="container">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                    <!-- Nav brand -->
                    <a href="${path}/" class="nav-brand"><img src="${path}/resources/img/logo2.png" alt="해법 로고 이미지" style="width: 80%"></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="albums-store.html">Albums</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="albums-store.html">Albums</a></li>
                                        <li><a href="event.html">Events</a></li>
                                        <li><a href="blog.html">News</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="elements.html">Elements</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="#">Dropdown</a>
                                            <ul class="dropdown">
                                                <li><a href="#">Even Dropdown</a></li>
                                                <li><a href="#">Even Dropdown</a></li>
                                                <li><a href="#">Even Dropdown</a></li>
                                                <li><a href="#">Even Dropdown</a>
                                                    <ul class="dropdown">
                                                        <li><a href="#">Deeply Dropdown</a></li>
                                                        <li><a href="#">Deeply Dropdown</a></li>
                                                        <li><a href="#">Deeply Dropdown</a></li>
                                                        <li><a href="#">Deeply Dropdown</a></li>
                                                        <li><a href="#">Deeply Dropdown</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Even Dropdown</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="event.html">Events</a></li>
                                <li><a href="blog.html">News</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>

                            <!-- Login/Register & Cart Button -->
                            <div class="login-register-cart-button d-flex align-items-center">
                                <!-- Login/Register -->
                                <c:if test="${sid eq null}">
                                <div class="login-register-btn mr-50" style="margin-right: 10px!important;" >
                                    <a href="${path}/user/term" class="btn btn-primary" style="background-color: #fff; color: #000; border: none;">JOIN</a>
                                </div>
                                <div class="login-register-btn mr-50">
                                    <a href="${path}/user/login" class="btn btn-primary" style="background-color: #625e5e; color: #fff; border: none;">LOGIN</a>
                                </div>
                                </c:if>
                                <c:if test="${sid ne null && sid eq 'admin'}">
                                    <div class="login-register-btn mr-50" style="margin-right: 10px!important;" >
                                        <a href="${path}" class="btn btn-primary" style="background-color: #fff; color: #000; border: none;">ADMIN</a>
                                    </div>
                                    <div class="login-register-btn mr-50">
                                        <a href="${path}/user/logout" class="btn btn-primary" style="background-color: #625e5e; color: #fff; border: none;">LOGOUT</a>
                                    </div>
                                </c:if>
                                <c:if test="${sid ne null && sid ne 'admin'}">
                                    <div class="login-register-btn mr-50" style="margin-right: 10px!important;" >
                                        <a href="${path}/user/myPage" class="btn btn-primary" style="background-color: #fff; color: #000; border: none;">MYPAGE</a>
                                    </div>
                                    <div class="login-register-btn mr-50">
                                        <a href="${path}/user/logout" class="btn btn-primary" style="background-color: #625e5e; color: #fff; border: none;">LOGOUT</a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
