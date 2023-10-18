<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 출석체크 </title>
    <jsp:include page="../layout/head.jsp" />
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2> 오프라인 강의 출석체크 </h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->

<div class="container mt-100">
    <h4 class="title"> 위치 </h4>
    <div class="content">
        <div class="is-center">
            <div id="map" style="margin: 0px auto; width: 700px; height: 400px; background: white;"></div>
        </div>
    </div>

</div>

<jsp:include page="../layout/footer.jsp" />

<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
<script>
    // 사용자 위치 정보 가져오기
    function success({ coords, timestamp }) {
        let latitude = coords.latitude;         // 위도
        let longitude = coords.longitude;       // 경도
        let accuracy = coords.accuracy;         // 위도 및 경도의 좌표 정확도 수준 (미터 단위)

        console.log(latitude, longitude);

        let mapContainer = document.getElementById('map'),                  // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(latitude, longitude),          // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
        let map = new daum.maps.Map(mapContainer, mapOption);
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker);
    }

    function error(error) {
        console.log(error.code);
        console.log(error.message);
    }

    function getUserLocation() {
        const options = {
            enableHighAccuracy: true,
            maximumAge: 30000,
            timeout: 27000
        };
        if (!navigator.geolocation) {
            throw "위치 정보가 지원되지 않습니다.";
        }
        navigator.geolocation.getCurrentPosition(success, error, options);
    }
    getUserLocation();
</script>
</body>
</html>
