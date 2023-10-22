<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<br>
<br>
<div class="has-background-white card-content shadow-down p-6" id="board2">
    <c:if test="${! empty sid && sid eq 'admin'}">
        <div class="btn-group float-right mb-3">
            <a href="javascript:void(0);" id="answer" class="btn btn-outline-dark">답변등록</a>
            <a href="javascript:void(0);" onclick="ListPage()" class="btn btn-outline-dark">목록</a>
            <a href="javascript:void(0);" id="edit" data-qno="${list.qno}"  class="btn btn-outline-dark">수정</a>
            <a href="javascript:void(0);" id="delete" class="btn btn-outline-dark">삭제</a>
      <input id="qno" value="${detail.qno}" hidden="hidden">
      <input id="lcode" value="${detail.lcode}" hidden="hidden">
        </div>
    </c:if>
    <c:if test="${! empty sid && sid ne 'admin'}">
        <div class="btn-group float-right">
            <a href="${path}/lecBoard/list?page=${curPage}" class="btn btn-outline-dark">목록</a>
        </div>
    </c:if>
    <c:if test="${sid ne 'admin' && sid eq detail.author}">
        <div class="btn-group float-right">
            <a href="${path}/lecBoard/list?page=${curPage}" class="btn btn-outline-dark">목록</a>
            <a href="${path}/lecBoard/edit?qno=${detail.qno}" class="btn btn-outline-dark">수정</a>
            <a href="${path}/lecBoard/delete?qno=${detail.qno}" class="btn btn-outline-dark">삭제</a>
        </div>
    </c:if>
    <table class="table project-table table-centered table-nowrap">
        <tbody>
        <tr>
            <th class="text-center">제목</th>
            <td colspan="3">${detail.title}</td>
        </tr>
        <tr>
            <th class="text-center">작성일</th>
            <td>
                <fmt:parseDate value="${detail.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
            </td>
            <th class="text-center">작성자</th>
            <td colspan="3">${detail.author}</td>
        </tr>
        <tr>
            <td colspan="6" style="font-size: 15px;" class="p-4">${detail.content}</td>
        </tr>
        <tr>
            <td colspan="5">
                <div class="d-flex justify-content-between">
                    <c:if test="${!empty prev}">
                        <div class="text-left">
                            <a href="${path}/lecBoard/detail?qno=${prev.qno}&page=${curPage}"><i class="fa-solid fa-angles-left fa-xl"></i>${prev.title}</a>
                        </div>
                    </c:if>
                    <c:if test="${empty prev}">
                        <div class="text-left">
                            <h6> 첫 번째 글입니다. </h6>
                        </div>
                    </c:if>
                    <c:if test="${!empty next}">
                        <div class="text-right">
                            <a href="${path}/lecBoard/detail?qno=${next.qno}&page=${curPage}">${next.title}<i class="fa-solid fa-angles-right fa-xl"></i></a>
                        </div>
                    </c:if>
                    <c:if test="${empty next}">
                        <div class="text-right">
                            <h6> 마지막 글입니다. </h6>
                        </div>
                    </c:if>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    </div>
</div>

<script>
    $('#edit').click(function (e) {
        e.preventDefault(); // 기본 클릭 이벤트 방지

        var qno = document.getElementById("qno").value;

        // Ajax 요청 보내기
        $.ajax({
            type: 'GET',
            url: '${path}/lecBoard/edit',
            data: {
                qno : qno,
            },
            success: function (data) {
                // Ajax 요청이 성공했을 때 수행할 작업
                // data 변수에 서버에서 반환한 데이터가 포함됩니다.
                $("#board").html(data);
                originalContent = $("#board").html();
            },
            error: function () {
                // Ajax 요청이 실패했을 때 수행할 작업
                console.log("에러다에러"+error.responseText)
            }
        });
    });
</script>
<script>
    $('#delete').click(function (e) {
        e.preventDefault(); // 기본 클릭 이벤트 방지

        var qno = document.getElementById("qno").value;

        // Ajax 요청 보내기
        $.ajax({
            type: 'GET',
            url: '${path}/lecBoard/delete',
            data: {
                qno : qno,
            },
            success: function (data) {
                // Ajax 요청이 성공했을 때 수행할 작업
                // data 변수에 서버에서 반환한 데이터가 포함됩니다.
                ListPage();
                originalContent = $("#board").html();
            },
            error: function () {
                // Ajax 요청이 실패했을 때 수행할 작업
                console.log("에러다에러"+error.responseText)
            }
        });
    });
</script>
<script>
    function ListPage(){
        var lcode = $("#lcode").val();
        $.ajax({
            type: "GET",  // GET 요청 또는 POST 요청을 선택할 수 있습니다.
            url: "${path}/lecBoard/list",  // 실제 API 엔드포인트로 변경해야 합니다.
            data: {
                lcode : lcode
            },
            success: function (data) {
                $("#board").html(data);
            },
            error: function (error) {
                console.log("에러다에러"+error.responseText)
            }
        });
    }
</script>
<script>
    $('#answer').click(function (e) {
        e.preventDefault(); // 기본 클릭 이벤트 방지

        var qno = document.getElementById("qno").value;

        // Ajax 요청 보내기
        $.ajax({
            type: 'GET',
            url: '${path}/lecBoard/answerInsert',
            data: {
                qno : qno,
            },
            success: function (data) {
                // Ajax 요청이 성공했을 때 수행할 작업
                // data 변수에 서버에서 반환한 데이터가 포함됩니다.
                $("#board").html(data);
                originalContent = $("#board").html();
            },
            error: function () {
                // Ajax 요청이 실패했을 때 수행할 작업
                console.log("에러다에러"+error.responseText)
            }
        });
    });
</script>