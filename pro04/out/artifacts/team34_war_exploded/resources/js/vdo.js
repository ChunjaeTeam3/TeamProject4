/*버튼 선택자 */
let video = document.getElementById("video");
let play = document.getElementById("play");
let pause = document.getElementById("pause");
let stop = document.getElementById("stop");
let backward = document.getElementById("backward");
let forward = document.getElementById("forward");
let timeCurrent = document.getElementById("currentTime");
let vol = document.getElementById("vol");
let progress = document.getElementById("progress");
let progressBar = document.getElementById("progressBar");
let volTxt = document.getElementById("volTxt");
let full = document.getElementById("full");

// 비디오 로딩
video.load();
//비디오의 볼륨값 초기화
video.volume = 1

//동영상 재생시간 초기화
let total, totalmin, totalsec, totalTime;
video.addEventListener('loadedmetadata', function (){
    total = video.duration;
    totalmin = Math.floor(total/60);
    totalsec = Math.floor(total -(totalmin*60));
    if(totalmin < 10) { totalmin = "0"+totalmin;}
    if(totalsec < 10) { totalsec = "0" + totalsec;}
    totalTime = totalmin+":"+totalsec;

    timeCurrent.innerHTML = "00:00 / " + totalTime;
});

//재생함수 호출
play.addEventListener("click", function (){ playPause();});
//일시정지 함수 호출
pause.addEventListener("click",function (){ playPause();});
//재생 일시정지 함수
function playPause() {
    if (video.paused) {
        video.play();
        play.style.display = "none";
        pause.style.display = "inline-block";
    } else {
        video.pause();
        play.style.display = "inline-block";
        pause.style.display = "none";
    }
}
//정지함수 호출
stop.addEventListener("click",function (){stopPlayer();});
//정지 함수
function stopPlayer(){
    video.pause();
    video.currentTime = 0;
    play.style.display="inline-block";
    pause.style.display="none";
}
// 뒤로 이동 함수 호출
backward.addEventListener("click", function() {
    video.currentTime -= 10;
});
// 앞으로 이동 함수 호출
forward.addEventListener("click", function() {
    video.currentTime += 10;
});
//볼륨 조절바 기능 정의 및 호출
vol.addEventListener("change", function(){
    video.volume = this.value/1000;
    volTxt.innerText = parseInt(video.volume*100)+"%";
});

//동영상 크기제어 처리부
full.addEventListener("click",function (){ fullScreen();});
// 동영상 크기제어 함수
function fullScreen () { //전체화면 만들기
    if (video.requestFullscreen) { video.requestFullscreen(); }
    else if (video.mozRequestFullScreen) { video.mozRequestFullScreen(); }
    else if (video.webkitRequestFullscreen) { video.webkitRequestFullscreen(); }
    else if (video.msRequestFullscreen) { video.msRequestFullscreen(); }
}

//재생시간 표시 처리부
playTime(); //재생시간 표시 함수
progressPlayer(); //프로그레스바 늘리기 함수
let current, currentmin, currentsec, currentTime;
function playTime () {
    video.addEventListener("timeupdate", function (){
        if (video.duration == video.currentTime) {
            play.style.display = "inline-block";
            pause.style.display ="none";
        }
        current = video.currentTime;
        currentmin = Math.floor(current/60);
        currentsec = Math.floor(current - (currentmin*60));
        if(currentmin < 10) { currentmin = "0"+currentmin;}
        if(currentsec < 10) { currentsec = "0" + currentsec;}
        currentTime = currentmin+":"+currentsec;

        total = video.duration;
        totalmin = Math.floor(total/60);
        totalsec = Math.floor(total -(totalmin*60));
        if(totalmin < 10) { totalmin = "0"+totalmin;}
        if(totalsec < 10) { totalsec = "0" + totalsec;}
        totalTime = totalmin+":"+totalsec;

        timeCurrent.innerHTML = currentTime + " / " + totalTime;
    });
}

//프로그레스바
function progressPlayer () {
    video.addEventListener("timeupdate", function () {
        let max = Math.floor(video.duration);
        let current = Math.floor(video.currentTime);
        let percent = 100 * (current / max);
        progressBar.style.width = percent + "%";
    });
}

//프로그래스바 seek
function seek (event) {
    let seekTotal = parseInt(progress.style.width);
    let seekX = event.offsetX;
    let seekPercent = 100 * (seekX / seekTotal);
    progressBar.style.width = seekPercent + "%";
    let seekMove = (seekPercent / 100) * Math.floor(video.duration);
    video.currentTime = seekMove;
}
/* 파이어폭스 이벤트 크로스브라우징코드 */
if (navigator.userAgent.indexOf("Firefox") >= 0) {
    let eventNames = ["mousedown", "mouseover", "mouseout", "mousemove", "mousedrag", "click", "dbclick", "keydown", "keypress", "keyup"];
    for (let i = 0; i <eventNames.length; i++) {
        window.addEventListener(eventNames[i], function (e) {
            window.event = e;
        }, true);
    }
}
progress.addEventListener("click", function () {
    seek(event);
});                 //seek

