<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

    <jsp:include page="../layout/head.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        input {
            border-radius: 5px;
            height: 35px;
            border: 1px solid #cbcbcb;
            width: 100%;
        }
        textarea {
            resize: none;
            width: 100%;
            height: 400px;
            border: 1px solid #cbcbcb;
            border-radius: 5px;
        }
    </style>

<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->

<!-- 브레드크럼 끝 -->
<div class="has-background-white card-content shadow-down p-6">
            <form>
                <div class="col-12">
                    <div class="card w-auto">
                        <div class="card-body">
                            <div class="table-responsive project-list">
                                <table class="table project-table table-centered table-nowrap">
                                    <tbody>
                                    <tr>
                                        <th class="text-center" style="vertical-align: middle; width: 15%;">제목</th>
                                        <td><input type="text" id="title" name="title" placeholder="제목을 입력하세요" class="pl-2" required autofocus></td>
                                        <td><input type="text" id="lcode" name="lcode" placeholder="제목을 입력하세요" class="pl-2" value="${lcode}" hidden="hidden"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="font-size: 15px;">
                                            <textarea name="content" id="content" cols="100" rows="8" maxlength="800" class="single-textarea" style="height: 400px; border: 1px solid #cbcbcb" placeholder="질문 내용을 입력하세요"></textarea>
                                            <script>
                                                $(document).ready(function () { $("#content").cleditor(); });
                                            </script>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="btn-group float-right mr-3">
                                    <button type="button" onclick="backback()" class="button" >목록으로</button>
                                    <input type="submit" class="btn btn-dark" style="height: 100%" value="등록" onclick="insertPage()">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
</div>
        <!-- 테이블 영역 끝 -->
<script>
    function insertPage() {
        // AJAX 요청을 사용하여 글쓰기 페이지를 로드합니다.
        var title = document.getElementById("title").value
        var content = document.getElementById("content").value
        var lcode = document.getElementById("lcode").value
        $.ajax({
            url: "${path}/lecBoard/questionInsert?lcode=" + lcode, // 글쓰기 페이지의 URL을 여기에 넣어주세요.
            type: "POST", // GET 요청 사용
            success: function () {
                console.log("성공")
                // 성공적으로 글쓰기 페이지를 불러왔을 때 실행되는 콜백 함수
                // data는 글쓰기 페이지의 HTML 내용을 포함하고 있습니다.
            },
            error: function (error) {
                console.log("에러다에러"+error.responseText)
            }
        });
    }
</script>


<!-- 푸터 시작 -->


