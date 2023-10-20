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
</head>
<div class="container mt-5">
    <ul class="list-group thumb_list_wrap">
        <li class="list-group-item">
            <div class="container">
                <form id="searchMath" class="row g-3">
                    <div class="col-auto">
                        <div class="col-auto">
                            <input class="form-control" type="text" id="ma" name="ma" autocomplete="off" value="ma" hidden="hidden">
                        </div>
                        <select style="height: 36px;font-size: 16px" id="mathType" name="mathType" class="form-select">
                            <option value="T">제목</option>
                            <option value="C">내용</option>
                            <option value="W">강사이름</option>
                        </select>
                    </div>
                    <div class="col-auto">
                        <input class="form-control" type="text" id="mathKeyword" name="mathKeyword" placeholder="검색어를 입력하세요" autocomplete="off" value="${page.keyword}">
                    </div>
                    <div class="col-auto">
                        <input type="button" class="btn btn-primary" value="검색" onclick="searchMath()" />
                    </div>
                </form>
                <br>
                <div class="row">

                    <c:forEach items="${lectureList}" var="lecture">
                        <c:if test="${lecture.scode eq 'ma'}">
                            <div class="col-md-2 img">
                                <img src="${path}/resources/img/teacher/an.png" alt="사진"/>
                            </div>
                            <div class="col-md-10 cont_wrap">
                                <div class="txt_area">
                                    <h7 class="tit">강사: ${lecture.tcode}</h7>
                                    <h6 class="tit"><a href="${path}/lecture/detail?lcode=${lecture.lcode}">${lecture.lname}</a></h6><br>
                                    <h8>수강인원 ${lecture.maxStudent}명</h8><br>
                                    <h8>교재: 수능특강</h8><br>
                                    <h9>다운로드</h9><br>
                                    <span>접수기간 - ${lecture.sdate} ~ ${lecture.edate} | 접수상태:${lecture.state}</span>
                                    <a href="${path}/lecture/register?lcode=${lecture.lcode}" style="margin-left: 600px" class="btn btn-primary btn_L_col2"><span>수강신청</span></a>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>

                    <c:if test="${empty lectureList}">
                        <div class="col-md-10 cont_wrap">
                            <div class="txt_area" style="text-align: center">
                                <h4>결과가 없습니다.</h4>
                            </div>
                        </div>
                    </c:if>
                </div>
                <nav class="pagination justify-content-center mb-6" aria-label="pagination">
                    <c:if test="${curPage > 5}">
                        <a href="${path}/lecture/list.do?page=${page.blockStartNum - 1}<c:if test="${!empty cate}">&cate=${cate}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="btn btn-primary">Previous</a>
                    </c:if>
                    <c:if test="${page.blockLastNum < page.totalPageCount}">
                        <a href="${path}/lecture/list.do?page=${page.blockLastNum + 1}<c:if test="${!empty cate}">&cate=${cate}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="btn btn-primary">Next page</a>
                    </c:if>
                    <ul class="pagination">
                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                            <c:choose>
                                <c:when test="${i == curPage}">
                                    <li class="page-item active">
                                        <span class="page-link" aria-label="Page ${i}">${i}</span>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a href="${path}/lecture/list.do?page=${i}<c:if test="${!empty curCategory}">&cate=${curCategory}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="page-link" aria-label="Page ${i}">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </li>
    </ul>
</div>


<script>
    function searchMath() {
        var scode = document.getElementById("ma").value;
        var type = document.getElementById("mathType").value;
        var keyword = document.getElementById("mathKeyword").value;
        var path = "${path}/lecture/maPro";

        var url = path + "?type=" + type + "&keyword=" + keyword +"&scode=" + scode;
        $.ajax({
            url: url,
            type: "GET",
            success: function (data) {
                // 성공적으로 데이터를 서버로 전송했을 때 실행되는 콜백 함수
                // 서버로부터 반환된 데이터를 처리할 수 있습니다.
                console.log(data);
                // 여기에서 반환된 데이터를 사용하여 필요한 작업을 수행합니다.
                $("#math").html(data)
            },
            error: function (error) {
                // 데이터 전송 중에 오류가 발생했을 때 실행되는 콜백 함수
                console.error("에러: " + error.responseText);
            }
        });
    }
</script>

