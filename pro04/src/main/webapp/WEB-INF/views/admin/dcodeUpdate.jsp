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
    <title> 배달정보수정 </title>
    <jsp:include page="../layout/head.jsp"></jsp:include>

</head>
<body>
<div id="content">
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

    <div class="container-md p-5 mt-5">
        <h4 class="mb-2"> 송장번호 입력 </h4>
        <form name="frm1" id="frm1" action="${path}/dcodeUpdatePro" method="post" class="border p-4">
            <div class="row">
                <div class="form-outline mb-4 col col-8" style="display: flex;">
                    <input class="form-control-lg col-12" type="text" name="dcode" id="dcode" value="${delivery.dcode}" required>
                    <button type="submit" class="btn btn-dark btn-lg col-6" style="margin-left: 20px;"> 수정 </button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>