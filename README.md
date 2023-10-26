## 📍Chunjae Project 04
천재교육 풀스택 JAVA 과정 2기 4차 팀 프로젝트 _해법 홈페이지
<br><br>

## 🖥️ 프로젝트 소개
"해법(Haebeop)" 이라는 온라인/오프라인 강의 및 커뮤니티 사이트입니다.
<br><br>

<p align="center"><img alt="list" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/f0f44545-ee7b-4de9-b5bb-d33325165f40"></p>
<br>

## 🕰️ 개발 기간
* 23.09.04일 - 23.09.22일
  <br><br>

### 🧑‍🤝‍🧑 멤버구성

**팀장 : [김이호](https://github.com/leeho7029)**
* 시퀀스 다이어그램 작성
* usecasediagram 작성
* 이벤트 기능 구현
  * 이벤트 신청 기능 구현
*  이벤트 당첨 구현
  * 이벤트 추첨 기능 구현
  * 당첨자 발표 기능 구현
  * 당첨자 익명처리 기능 구현
* 마이페이지
  * 본인확인 기능 구현
  * 나의 정보 수정 기능 구현
* 강의 기능 구현
  * 강의 목록 기능 구현
  * 강의 상세보기 기능 구현
  * 강의 후기 기능 구현
  * 강의별 질문 게시판 기능 구현
  * 수강신청 인원제한 및 로그인 여부 기능 구현

<br><br>
**팀원 : [김보경](https://github.com/emssme)**
* 화면설계서 작성
* 요구사항정의서 작성
* WBS 작성
* 출석체크 기능 구현
  * 출석체크시 포인트 지급 기능 구현
* 커뮤니티 기능 구현
   * 검색 기능 구현
   * 페이징 처리 기능 구현
   * 욕설 필터 기능 구현
   * 커뮤니티 관리 기능 구현
   * 커뮤니티 댓글 기능 구현
* 투두리스트 기능 구현
* 뉴스 크롤링 기능 구현
* 페이징 처리 기능 구현
* 로그인 기능 구현
   * 아이디 기억 기능 구현

<br><br>
**팀원 : [김현경](https://github.com/beubeu95)**
* 로그인 기능 구현
* 강의 결제 기능 구현
  * 배송 기능 구현
  * 환불 기능 구현
* 교재 기능 구현
  * 이벤트 신청 기능 구현
* 로그인 기능 구현
* 자료실 기능 구현
  * 파일첨부 기능 구현
  * 관리자 페이지 자료실 관리 기능구현
  * 페이징 처리 기능 구현

<br><br>
**팀원 : [신예은](https://github.com/shinyeeun789)**
* QNA 기능 구현
  * 관리자 페이지 미답변 질문글 관리 기능 구현
* FAQ 기능 구현
* 공지사항 기능 구현
* 강의 기능 구현
  * 강의 폐강 기능 구현(마감 일주일 전, 수강생 5명 이하)
  * 강의 후기 기능 구현
  * 마이페이지 강의 목록 기능 구현
  * 수강신청 인원제한 및 로그인 여부 기능 구현
  * 온라인 강의 포인트 결제 기능 구현현
* 출석체크 기능 구현
  * 학생 출결코드 인증 기능 구현
  * 교사 출결코드 발급 기능 구현
* 메인페이지 제작
* 관리자페이지 기능 구현
  * 관리자페이지 화면 구현 ( 차트 및 수식 구현)
  * 강사 목록 및 추가 기능 구현
  

<br><br>
### ⚙️ 개발 환경
#### ✅FRONTEND : <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/css-0769AD?style=for-the-badge&logo=css&logoColor=white"><img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white"><img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
#### ✅BACKEND : <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"><img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"><img src="https://img.shields.io/badge/intellijidea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

#### ✅DATABASE : <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">

#### ✅Server : <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
<br><br>
<hr>
<br><br>

# ⚒프로젝트 설계

### 📂개념적 설계 (USECASE DIAGRAM)
<p align="center"><img alt="usecasediagram1" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/b39bfb89-e76e-4367-ad20-dab63abaad19"></p>


<br><br>

### 📂DATABASE - 테이블 ERD
<p align="center"><img alt="database_erd" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/e7514ff1-a053-43d0-8598-d852e30d9880"></p>
<br><br>

### 📂DATABASE - 테이블 구현
#### USER
<p align="center"><img alt="member" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/0b711a9b-95f8-41dc-b23a-eff8459462fe"></p>

#### NOTICE
<p align="center"><img alt="notice" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/1ceb1a90-839c-4e4d-bef7-085a01608d6b"></p>

#### QNA
<p align="center"><img alt="qna" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/16fc5cca-98b4-456e-aa80-95cfee5c0cf9"></p>

#### FAQ
<p align="center"><img alt="faq" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/a5049fb5-5733-43e9-a547-c37fc295a19a"></p>

#### BOARD
<p align="center"><img alt="board" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/30cdbdde-c688-4693-88e6-d1a63085360c"></p>

#### COMMENT
<p align="center"><img alt="comment" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/03b99e5b-9eef-4c9e-95e5-6a2c63e58014"></p>

#### CATEGORY
<p align="center"><img alt="category" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/c84d780f-254d-4af8-a977-8b1c9cfbacde"></p>

#### FILEINFO
<p align="center"><img alt="fileinfo" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/7da3ca15-fe3b-4b63-9b6c-a5eecc83c6d8"></p>

#### ATTENDANCE
<p align="center"><img alt="attendance" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/93bbfc48-cb3b-41c2-ba94-6136eddc1342"></p>

#### APPLY
<p align="center"><img alt="apply" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/815af037-85ca-4ba5-a4e4-973ce7d768a6"></p>

#### EVENT
<p align="center"><img alt="event" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/086fc149-eae9-4277-9746-fe66a6884da1"></p>

#### WINNER
<p align="center"><img alt="winner" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/ebf05f64-5c26-4014-8435-ad0d8cb86a17"></p>

#### WINNERLIST
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/4df18b82-23c0-440b-899d-0e4f8a75b465"></p>

#### BOOK
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/bca04606-72aa-4600-8130-5fec95b23a0a"></p>

#### CURRICULUM
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/ce980813-8724-4ca1-b58d-eeb74df1703e"></p>

#### DATAROOM
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/94624dc0-9167-415e-aff6-1bdb7c440a71"></p>

#### DELIVERY
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/33c82cf4-589f-421e-8825-a6deb99cae41"></p>

#### LECBOARD
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/3ba6f3f2-d92c-4dc6-a4f7-c681597fb005"></p>

#### LECTURE
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/8db1b97f-313c-4dda-a09f-3a4d80ee7aef"></p>

#### LECTUREATTEND
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/6583bfc1-5bf2-4865-b263-3ef3fbd5b3e6"></p>

#### PAYMENT
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/fbc3da0b-a7d7-4e37-a667-d90d98039e7c"></p>

#### RECEIVE
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/1abf01f3-8e4b-4580-bb85-9613823a340d"></p>

#### REGISTER
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/568d3099-487f-458e-b2d8-291a2fdf8b45"></p>

#### REVIEW
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/e8820179-75be-4313-88eb-24871d6c6483"></p>

#### SAVEATTENDCODE
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/5c2d3795-a236-4e54-aceb-b3897e274593"></p>

#### SERVE
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/48f103a1-60b9-410c-9bad-88d750086ac5"></p>

#### STUDYINFO
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/72919498-0cb2-4b6d-bf81-e86a943be96d"></p>

#### SUBJECT
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/e0d14eca-3023-45ef-9c52-c1725ffbba02"></p>

#### TEACHER
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/9ef94786-98df-4db8-9bfd-d90351c3360b"></p>

#### TODO
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/f083e861-69b1-4d20-ae7f-e32df4d9dd44"></p>

<br><br>

### 📂CLASS DIAGRAM
![classDiagram1](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/3f079854-d50d-45ca-8623-ce7fd76e597c)
![classDiagram2](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/17531f7f-9ec9-492c-9111-83da9ba34951)

<br><br>

### 📂시퀀스 다이어그램 (Sequence Diagram)

#### 회원
<p align="center"><img alt="시퀀스다이아그램1" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/c56f4623-ad51-4cdb-9a05-2ef48273635c"></p>

#### 관리자
<p align="center"><img alt="시퀀스다이아그램2" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/5cbd501f-b86a-4f3b-9855-0d75bc8620fc"></p>

#### 교육뉴스
<p align="center"><img alt="시퀀스다이아그램3" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/0a95da73-c51b-47fc-868c-1ef49a67db3c"></p>

#### 공지사항
<p align="center"><img alt="시퀀스다이아그램4" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/93e6a5ce-a106-4010-a208-f35cec71a539"></p>

#### QnA
<p align="center"><img alt="시퀀스다이아그램5" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/abe77b6a-596d-4da4-9156-85820404a71f"></p>

#### FAQ & HOME
<p align="center"><img alt="시퀀스다이아그램6" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/f4411160-4048-419f-b8dc-231e63f0ebae"></p>

#### 커뮤니티
<p align="center"><img alt="시퀀스다이아그램7" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/cf3da737-b3af-4160-9a88-ca0c78b409fe"></p>

#### 댓글
<p align="center"><img alt="시퀀스다이아그램8" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/ffec9f3d-745e-416e-9166-1122ed0ef3c0"></p>

#### 자료실
<p align="center"><img alt="시퀀스다이아그램9" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/bc1a76fc-9cb1-4bc4-a81f-08b2ad11a38f"></p>

#### 이벤트
<p align="center"><img alt="시퀀스다이아그램10" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/c49b118a-c2ef-40b1-84f5-ead08ab6cf75"></p>

#### 이벤트 신청
<p align="center"><img alt="시퀀스다이아그램11" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/d008e280-199e-4a29-9114-51486016beeb"></p>

#### 당첨자
<p align="center"><img alt="시퀀스다이아그램12" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/e6f79e13-f0b7-4249-95be-4003ea1de11f"></p>

#### 강의
<p align="center"><img alt="시퀀스다이아그램13" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/e1a6b6b0-fd34-48d8-a972-d175fa41224f"></p>

#### 출석체크
<p align="center"><img alt="시퀀스다이아그램14" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/3ee5fd7d-dc7f-409a-8d86-409406ec4d43"></p>

#### 결제
<p align="center"><img alt="시퀀스다이아그램15" src="https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/00b9b0b8-89ef-4c4f-8058-11dca367c7ca"></p>
<br><br>

# 📎기능 구현
## 🗂 메인 페이지
- 사이드바
  <br>
  ![index](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/f8dc4788-c363-4595-8c6b-e23227f9fb54)
  <br><br>

## 🗂 회원 기능
### 1. 로그인
- DB값 검증
- 로그인 시 쿠키(Cookie) 및 세션(Session) 생성
- 로그아웃
- 아이디 저장
  <br>
  ![로그인](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/1ba4338e-2512-4984-9eea-cea8895e3f25)

### 2. 회원가입
- 주소 API 연동
- ID 중복 체크
- 비밀번호 유효성 검사
  <br>
  ![회원가입](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/40956f53-dac6-44d1-ab9a-b23c0572c011)
  <br>

<br><br>
### 🗂 강의
### 1. 비로그인 및 회원 로그인 시
- 강의 목록(온라인/오프라인)
- 강의 상세보기 (ajax 이용하여 강의소개, 목차, 질문게시판, 수강후기 확인)
  <br>
  ![강의](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/768fc6f2-7a39-4100-84ea-f5093dddb43d)
  <br>
  
### 2. 회원 로그인 시
- 수강신청 기능구현
- 수강인원 초과시 수강신청 제한
- 이미 신청한 회원 중복신청 방지 기능 구현
- 질문게시판 CRUD
- 수강신청 후 수강후기 작성 및 별점 주기 가능하도록 구현    
### 3. 결제
- 온라인 강의 포인트로 결제하도록 기능 구현
- 오프라인 강의 결제API 연결하여 결제
- 회원 로그인시 마이페이지에서 주문취소/배송조회 가능
  <br>

<br><br>
## 🗂 자료실
- CRUD
- 관리자: 자료실 등록[다수의 파일 첨부 가능], 자료실 글[파일 포함] 수정, 자료실 글 삭제 가능
- 회원: 자료실 글 상세 보기만 가능
  <br>
  ![자료실](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/1520a19c-6bae-43ae-9099-a9230839d38b)
  <br>

<br><br>
## 🗂 뉴스
- 뉴스 크롤링 기능 구현
- 뉴스 클릭시 해당 뉴스 링크로 이동
  <br>
  ![교육뉴스](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/c804d073-353b-4487-b10b-fc9085f4fe69)
  <br>

<br><br>
## 🗂 이벤트
### 1. 이벤트 관리
- CRUD
- 관리자: 이벤트 등록[파일 첨부], 이벤트 글 수정, 이벤트 글 삭제
- 회원: 이벤트 글 상세보기만 가능
  <br>
  ![이벤트(관리자)](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/5cdad5b4-6f1c-4d4a-a84e-cf0cb88eaa73)

### 2. 이벤트 신청
- 한번 신청한 회원 중복 신청 방지 구현
- 한 회원이 여러 이벤트 신청 가능하도록 구현
- 비로그인시 이벤트 신청 버튼 안보이도록 구현
  <br>
  ![이벤트(회원)](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/56ca3bcb-0f9c-4a20-804d-ebc1b1779293)

<br><br>
## 🗂 이벤트 당첨
### 1. 이벤트 신청자 목록
- 관리자 : 이벤트 신청자 목록 확인
- 추첨하기 링크로 이동
### 2. 이벤트 당첨
- 랜덤으로 원하는 당첨자수 선정하도록 구현
- 추첨 후 당첨자 발표글에 당첨자 익명 처리 구현
  <br>
  ![이벤트당첨](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/3ce28f8d-ddb5-4c43-87ca-c34248eeed5e)


<br><br>
## 🗂 출석체크
- 비로그인 시 로그인 페이지로 이동
- 출석체크 클릭 시 달력의 오늘 날짜에 스타일 변경 및 포인트 획득 창 출력
- 출석체크 시 10부터 100까지 10단위의 랜덤한 숫자의 포인트 획득 가능
- 출석체크 데이터와 추가된 포인트 데이터를 DB에 INSERT
  <br>
  ![출석체크](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/8a434fad-054a-4fe7-912d-aee4fdced37e)


<br><br>
## 🗂 커뮤니티
### 1. 커뮤니티
- 커뮤니티 게시글 작성, 읽기, 수정, 삭제 구현
- ckEditor를 활용하여 HTML 태그를 저장함으로써 게시글 내용을 자유롭게 작성 가능
- Page util 생성하여 페이징 기능 구현
- 커뮤니티의 카테고리 동적 구현
### 2. 댓글
- 댓글 작성, 삭제 구현
- 댓글 페이징 처리
- 비로그인시 댓글 작성 폼 비활성화
- 게시글 작성자와 관리자만 게시글 수정, 삭제 가능
  <br>
  ![커뮤니티](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/6b93c946-eb14-44a0-99f3-92684e094e2b)

<br><br>
## 🗂 FAQ
- FAQ 글 목록 화면 및 기능 구현
  <br>
  ![faq](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/9e9072e0-bb10-4ab3-ba4e-ace1f85f9f02)

<br><br>
## 🗂 공지사항
- 관리자만 공지사항 글 쓰기, 수정, 삭제 가능하도록 구현
- 회원은 공지사항 글 상세 보기만 가능하도록 구현
  <br>
  ![공지사항](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/5ea4da16-88e0-4f86-982b-57d007ed6e23)

<br><br>
## 🗂 Q & A
### 1. 비로그인 및 회원 로그인 시
- 비로그인 시 Q & A 목록만 확인 가능하도록 구현
- 회원 로그인 시 질문글만 작성 가능
- 질문글을 작성한 사용자만 글 수정, 삭제 가능
  <br>
  ![qna(회원)](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/7b640d55-847b-4b76-8d60-8ac73e9f0816)

### 2. 관리자 로그인 시
- 관리자 로그인 시 전체 게시글 CRUD 가능하도록 구현
- 관리자 페이지에서 미답변 질문 글 목록을 확인 후 바로 답변할 수 있도록 구현
  <br>
  ![qna(관리자)](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/f7c03c58-73e9-41dd-a12e-d1c1a507dc84)


<br><br>
## 🗂 마이페이지
- 마이페이지에서 수강신청한 강의, 오프라인 강의 출석하기, 개인정보변경, 배송확인 할 수 있도록 구현
  ![마이페이지](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/d79790ae-c867-4a63-b8d1-6c66038fbbc4)  

<br><br>
## 🗂 관리자페이지
- 관리자페이지에서 회원정보,질문게시판,강의,강사,교재,커리큘럼,배송을 관리할 수 있도록 구현
  ![관리자페이지](https://github.com/ChunjaeTeam3/TeamProject4/assets/138674233/f4292150-fbcd-47a7-a951-8e1f907d64dd) 



