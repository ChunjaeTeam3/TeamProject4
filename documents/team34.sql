DROP DATABASE team34;
CREATE DATABASE team34;
USE team34;
SELECT * FROM user;
-- 회원
CREATE TABLE user(
  id VARCHAR(20) PRIMARY KEY NOT NULL,
  pw VARCHAR(300) NOT NULL,
  NAME VARCHAR(50),
  email VARCHAR(100) NOT NULL,
  tel VARCHAR(20) NOT NULL,
  addr1 VARCHAR(200),
  addr2 VARCHAR(100),
  postcode VARCHAR(10),
  regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
  birth DATE,
  pt INT(11) DEFAULT 0,
  visited INT(11) DEFAULT 0,
  isStudy BOOLEAN DEFAULT false);
  
-- 회원 더미데이터
SELECT * FROM user;
INSERT INTO user VALUES('admin','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '관리자', 'admin@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('kimhk','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '김현경', 'kimhk@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('kimlh','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '김이호', 'kimlh@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('shinye','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '신예은', 'shinye@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('kimbk','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '김보경', 'kimbk@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test111','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '김이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-11-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test121','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '이이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-12-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test122','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '박이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-12-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test11','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '최이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test12','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '한이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test13','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '신이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test14','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '백이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test21','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '구이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-02-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test22','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '오이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-02-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test31','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '이이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-03-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test41','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '서이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-04-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test51','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '권이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test52','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '황이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test53','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '최이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test61','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '민이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-06-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test71','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '강이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-07-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test81','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '배이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-08-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test82','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '유이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-08-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test91','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '조이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-09-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test92','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '나이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-09-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test101','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '송이름', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-10-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);


-- 커뮤니티 카테고리 테이블 생성
CREATE TABLE category(
   cate VARCHAR(5) PRIMARY KEY NOT NULL,
   cateName VARCHAR(100) NOT NULL);


-- 카테고리 테이블 데이터
INSERT INTO category VALUES('A', '자유게시판');
INSERT INTO category VALUES('B', '교육정보');
INSERT INTO category VALUES('C', '강의 추천');
INSERT INTO category VALUES('D', '진로상담');

-- 게시판 테이블 생성
CREATE TABLE board(
  seq INT PRIMARY KEY AUTO_INCREMENT,
  cate VARCHAR(5) NOT NULL,
  title VARCHAR(200) NOT NULL,
  content VARCHAR(1000),
  nickname VARCHAR(20),
  regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
  visited INT DEFAULT 0,
  FOREIGN KEY(cate) REFERENCES category(cate) ON DELETE CASCADE,
  FOREIGN KEY(nickname) REFERENCES user(id) ON DELETE CASCADE);

/* 자유게시판 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '요즘 나만 느끼는 일상 이야기', '안녕하세요! 요즘 일상에서 느끼는 이런 저런 생각들을 나눌 수 있는 자리가 필요해서 이렇게 글을 써봅니다. 평범한 일상에서 느껴지는 작은 기쁨부터 고민, 궁금증까지 다양한 이야기들을 나눠봐요. 함께 이야기 나누면서 조금 더 나를 알아가고 싶어요. 여러분의 이야기도 기대해요!', 'test101');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '먹는 즐거움, 나만의 맛 여행', '안녕하세요, 맛집 탐험가로 떠나는 나만의 맛 여행 이야기를 공유하려고 합니다! 맛있는 음식을 찾아 나날이 다양한 식도락을 즐기며, 그 맛에 빠져보는 나만의 여정을 담아봅니다. 맛있는 음식과 함께 나누는 추억, 그 무엇도 대신할 수 없는 행복이에요. 같이 맛있는 이야기 나누어봐요!', 'test91');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '취미를 통한 나만의 작은 행복', ' 안녕하세요! 취미 생활을 통해 나만의 작은 행복을 찾아가는 여정을 나누고 싶어요. 그림 그리기, 음악 연주, 독서, 등산, 무엇이든지 제게 특별한 순간을 선사하는 취미들을 통해 일상의 소소한 기쁨을 느끼고 있어요. 여러분의 취미와 나누고 싶은 경험이 있다면 언제든지 말씀해주세요!', 'test92');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '감성을 담아 풀어내는 나만의 시간', '안녕하세요, 여기는 감성의 풍부한 이야기들을 나눌 수 있는 공간입니다. 나만의 감정을 시를 통해 표현하고, 일상의 감동을 나누며 마음을 편하게 풀어보려고 합니다. 시를 통해 나만의 감성을 표현하는 순간들을 함께해요. 여러분의 감성적인 이야기도 함께 들려주세요.', 'test81');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '여행이야기, 세상을 누비다', '안녕하세요! 여행을 통해 세계 각지에서 느낀 감동과 경험을 공유하고 싶어서 글을 씁니다. 다양한 나라와 문화를 경험하며 얻은 인상적인 이야기들을 담아봐요. 여행이 주는 새로운 시야와 경험을 통해 나만의 세계를 만들어나가는 여정을 함께 나누어봐요!', 'test82');

/* 교육정보 게시판 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '똑똑해지자! 유용한 학습 정보 공유', '안녕하세요! 이 공간은 학습과 교육에 관한 다양한 정보를 공유하고 함께 성장하는 공간입니다. 학교 공부에서 시작해서 취미로 꾸준히 배우는 것, 또는 현실에서 유용한 기술까지 학습과 관련된 모든 주제를 다룰 예정이에요. 함께 배워가며 더 똑똑해지는 여정에 동참해보세요!', 'test82');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '직업을 위한 교육과 전문 지식 공유', '안녕하세요! 여기는 다양한 직업을 위한 교육 정보와 전문 지식을 공유하는 공간입니다. 각 분야의 전문가들이 직업과 관련된 유용한 정보, 교육 경로, 취업 준비 팁 등을 나누어드리며, 여러분의 꿈을 향한 첫 걸음을 함께 응원하고 지원해드릴게요. 함께 멋진 직업을 향해 나아가요!', 'test71');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '부모님을 위한 교육 안내 및 조언', '안녕하세요, 부모님을 위한 교육 관련 정보를 나누는 공간입니다. 자녀의 교육과 관련된 궁금증, 교육 방법, 학교 선택, 학습 도구 소개부터 아이들의 성장과 관련된 다양한 이야기들을 함께 공유하고 상담할 수 있는 공간이에요. 부모님들의 이야기를 기다리고 있어요!', 'test82');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '효과적인 학습 방법과 꿀팁 공유', '안녕하세요, 학습을 더욱 효과적으로 하는 방법과 유용한 꿀팁들을 나누고자 하는 공간입니다. 학교에서 공부하는 것부터 개인적으로 공부하는 방법, 집중력 향상을 위한 습관 등 학습과 관련된 다양한 정보들을 함께 공유하고 배워가는 시간을 가지고자 합니다. 함께 공부해요!', 'test61');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '학교 생활, 스트레스 극복 팁 공유', '안녕하세요! 학교 생활에서 느끼는 스트레스를 극복하고 즐겁게 보내기 위한 꿀팁을 공유하는 공간입니다. 공부와 여가를 잘 조절하며, 친구 관계에서의 고민, 시험 스트레스 해소법 등 학교 생활에서 도움이 될만한 다양한 정보를 나누어보려고 해요!', 'test61');

/* 강의 추천 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('C', '나에게 도움을 준 강의 추천', '안녕하세요! 여기는 수강 완료하거나 수강 중인 강의 중 다른 사람들에게 추천하고 싶은 강의를 공유하는 공간입니다.', 'admin');

/* 진로상담 커뮤니티 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '미래를 그리는 진로상담 친구들', '안녕하세요! 이 곳은 당신의 미래를 함께 그리고 상담해주는 공간입니다. 진로에 관한 고민, 궁금증, 희망 등 모든 것을 자유롭게 나누고 고민을 함께 나눌 수 있는 친구들이 여기에 있어요. 함께 당신만의 꿈과 목표를 향해 나아가봐요. 당신의 미래를 응원합니다!', 'admin');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '꿈을 향한 진로탐색 여행', '안녕하세요! 여기는 당신의 꿈을 찾아가기 위한 진로탐색 여행지입니다. 어떤 진로를 선택해야 할지 망설이고 있다면 함께 여행하며 당신의 강점, 흥미, 가치관을 찾아보아요. 꿈을 향한 여정에서 당신에게 맞는 길을 찾을 수 있도록 도와드릴게요!', 'test51');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '나만의 길을 찾는 진로상담 모임', '안녕하세요! 이곳은 나만의 길을 찾고자 하는 당신을 위한 진로상담 모임입니다. 다양한 진로에 대한 이야기, 성장하는 과정에서의 고민, 앞으로의 목표를 나누며 함께 더 나은 미래를 향해 나아갈 수 있도록 도움을 드릴게요. 나만의 진로를 찾는 여정, 함께해요!', 'test53');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '청춘의 선택, 진로에 대한 이야기', '안녕하세요! 청춘의 선택인 진로에 대해 이야기 나누는 공간입니다. 다양한 진로 선택, 진로에 대한 고민, 준비 과정에서의 이슈들을 나누며 함께 당신에게 맞는 길을 찾아가봐요. 우리 모두 함께 꿈을 향해 달려봅시다!', 'test52');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '진로 여행을 떠나는 항해 모임', '안녕하세요! 우리는 당신의 진로 여행을 함께 항해할 동료입니다. 함께 세계 여행처럼 다양한 진로를 탐험하며, 당신의 역량과 흥미를 발견해보아요. 진로에 대한 이야기, 정보, 충고 등을 나누며 당신의 항해를 응원하고 지원할 준비가 되어있어요! 함께 떠나볼까요?', 'admin');


-- 커뮤니티 댓글 테이블 생성
CREATE TABLE comment(
   comNo INT PRIMARY KEY AUTO_INCREMENT,
   seq INT NOT NULL,
   nickname VARCHAR(20) NOT NULL,
   resdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
   content VARCHAR(1000) NOT NULL,
   FOREIGN KEY(seq) REFERENCES board(seq) ON DELETE CASCADE,
   FOREIGN KEY(nickname) REFERENCES user(id) ON DELETE CASCADE
);



-- 공지사항 테이블 생성
CREATE TABLE notice (
   seq INT AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(100) NOT NULL,
   content VARCHAR(1000) NOT NULL,
   nickname VARCHAR(20),
   regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
   visited INT DEFAULT 0
);

-- 공지사항
INSERT INTO notice VALUES (DEFAULT,'신규 회원 가입 안내','저희 학부모 커뮤니티에 가입하신 것을 진심으로 환영합니다. 회원 가입을 통해 여러분의 소중한 의견과 경험을 공유해주세요. 커뮤니티가 더욱 풍요롭고 활기찬 공간이 되도록 함께 노력하겠습니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티 이용 규칙 안내','해법은 아름다운 소통과 공유의 장을 만들기 위해 규칙을 마련하였습니다. 모든 회원들이 존중받고 행복한 커뮤니티를 유지할 수 있도록 함께 노력해주실 것을 부탁드립니다','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티 업데이트 안내','해법은 항상 더 나은 서비스를 제공하기 위해 노력하고 있습니다. 최근에 이루어진 업데이트 내용에 대해 안내드립니다. 회원 여러분의 소중한 의견을 항상 환영하며, 더 나은 커뮤니티를 만들기 위해 노력하겠습니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'자주 묻는 질문 (FAQ) 업데이트 안내','해법에서 자주 묻는 질문들에 대한 업데이트가 이루어졌습니다. 더 나은 서비스를 위한 자주 묻는 질문을 확인하시어 필요한 정보를 얻어가시길 바랍니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'안전한 커뮤니티 이용을 위한 안내','안전하게 커뮤니티를 이용하기 위해 몇 가지 유용한 안내를 드립니다. 어떻게 커뮤니티 내에서 안전하게 활동할 수 있는지에 대한 방법을 참고하여, 즐거운 커뮤니티 활동을 즐겨보시길 바랍니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'사용자 경험 개선을 위한 소중한 의견 수렴 안내','해법은 회원 여러분들의 소중한 의견을 항상 기다리고 있습니다. 사용자들의 의견을 토대로 커뮤니티를 보다 나은 곳으로 만들기 위해 최선을 다하겠습니다. 의견이나 제안 사항은 언제든지 환영합니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티 참여와 활동 방법 안내','해법에서 어떻게 참여하고 활동할 수 있는지에 대한 자세한 방법을 안내해 드립니다. 다양한 기능을 활용하여 보다 활발한 커뮤니티 활동에 참여해주시길 바랍니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티에서의 예의와 배려 안내','해법은 모두가 존중받고 행복한 환경을 만들기 위해 예의와 배려가 중요합니다. 다른 회원들을 존중하고 따뜻한 마음으로 소통하실 것을 부탁드립니다. 함께하는 커뮤니티를 만들어 나가는 데 도움을 주신다면 감사하겠습니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티에서의 긍정적인 기여에 대한 감사','해법은 모든 회원 여러분의 긍정적인 기여에 큰 감사를 드립니다. 각자의 의견과 경험이 모여 더 풍성한 커뮤니티를 만들 수 있습니다. 앞으로도 함께 나눔과 협력을 통해 더욱 발전된 커뮤니티를 만들어 나가시길 바랍니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티에서의 소중한 순간들을 기록하는 방법 안내','해법에서의 소중한 순간들을 기록하고 나누는 방법에 대한 안내입니다. 회원들 각자의 소중한 순간들을 공유하여 함께 기뻐하고 나누어주세요.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'커뮤니티 내에서의 정보 무단 유출에 대한 주의 안내','해법에서의 정보 무단 유출에 대한 주의사항을 안내해 드립니다. 모두가 안전하게 정보를 공유하고 사용할 수 있도록 주의해주시길 부탁드립니다.','admin',DEFAULT, DEFAULT);


-- faq 테이블 생성
CREATE TABLE faq (
   fno INT  PRIMARY KEY AUTO_INCREMENT ,
   question VARCHAR(1000) NOT NULL,
   answer VARCHAR(1000) NOT NULL,
   cnt INT DEFAULT 0 NOT NULL
);

-- faq 더미 데이터 추가
INSERT INTO faq(question, answer) VALUES('웹사이트에 어떻게 가입하나요?', '회원 가입 페이지에서 필요한 정보를 입력하여 가입할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('게시물을 어떻게 작성하나요?', '커뮤니티 페이지의 "글 작성" 버튼을 클릭하여 게시물을 작성할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('다른 회원들의 게시물에 댓글을 달고 싶어요. 어떻게 해야 하나요?','게시물의 하단에 있는 "댓글 작성" 영역에 댓글을 입력하여 등록할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('제가 작성한 글이 갑자기 사라졌어요', '부적절한 내용은 관리자가 예고 없이 삭제할 수 있습니다. 커뮤니티 규칙을 지켜주세요:)');
INSERT INTO faq(question, answer) VALUES('개인 정보 보호 정책은 무엇인가요?', '웹사이트의 개인 정보 보호 정책은 "회원가입의 회원약관동의" 페이지에서 확인할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('문의사항이 있을 때 어떻게 연락할 수 있나요?', '고객지원의 "QnA" 페이지에서 문의글을 작성하여 문의할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('어떤 유형의 교육자료를 제공하나요?', '초등학교, 중학교 및 고등학교 학생들을 위한 교과서, 참고서 및 워크북을 포함한 다양한 교육자료를 제공합니다.');
INSERT INTO faq(question, answer) VALUES('책은 실물 및 디지털 형식으로 모두 제공되나요?', '네, 대부분의 책은 실물 및 디지털 형식으로 제공되며 다양한 학습 선호도를 고려합니다.');
INSERT INTO faq(question, answer) VALUES('책이나 주제에 대한 제안을 할 수 있나요?', '물론입니다! 저희는 모든 제안을 소중히 생각합니다. 고객 지원팀에 의견을 보내주시면 됩니다.');
INSERT INTO faq(question, answer) VALUES('책은 정기적으로 업데이트되나요?', '네, 정확성과 관련성을 보장하기 위해 최신 교과서 및 참고 자료의 최신 판을 제공하기 위해 노력하고 있습니다.');



-- QNA
CREATE TABLE qna(
  qno int PRIMARY KEY AUTO_INCREMENT,   			-- 번호
  title VARCHAR(100) NOT NULL,   					-- 제목
  content VARCHAR(1000) NOT NULL,   				-- 내용`
  author VARCHAR(16),   								-- 작성자
  resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 등록일
  lev INT DEFAULT 0, 									-- 질문(0), 답변(1)
  par INT DEFAULT 0,													-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
  FOREIGN KEY(author) REFERENCES user(id) ON DELETE CASCADE);

-- 질문글 
INSERT INTO qna VALUES (DEFAULT, '어떤 주제의 강의를 들어야 할까요?', '공부하고자 하는 분야에 적합한 강의 주제를 선택하기 위한 조언이 필요합니다.', 'test111' ,DEFAULT, DEFAULT, 1);
INSERT INTO qna VALUES (DEFAULT, '동영상 학습에서 집중력을 높이는 방법이 뭐가 있나요?', '동영상 강의를 보면서 집중력을 유지하고 향상시키는 방법에 대한 조언을 원합니다.', 'test11' ,DEFAULT, DEFAULT, 2);
INSERT INTO qna VALUES (DEFAULT, '어떻게 강의 동영상을 효율적으로 정리하고 학습할 수 있을까요?', '강의 동영상을 효과적으로 정리하고 학습에 활용하는 방법에 대한 조언이 필요합니다.', 'test12' ,DEFAULT, DEFAULT, 3);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의 시간을 어떻게 최적화할 수 있을까요?', '동영상 강의를 효율적으로 활용하고, 공부 시간을 최적화하는 방법을 알고 싶습니다.', 'test122' ,DEFAULT, DEFAULT, 4);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 볼 때 주의력을 유지하는 방법이 뭐가 있을까요?', '동영상 강의를 보면서 주의력을 높이고, 정보를 효과적으로 이해하는 방법에 대한 조언을 찾고 있습니다.', 'test21 ' ,DEFAULT, DEFAULT, 5);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 저장하고 오프라인에서 어떻게 시청할 수 있을까요?', '강의 동영상을 저장하고, 인터넷 연결 없이 어떻게 시청할 수 있는 방법을 알고 싶습니다.', 'test92' ,DEFAULT, DEFAULT, 6);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 활용하여 스스로 학습 스케줄을 계획하는 방법이 뭐가 있나요?', '동영상 강의를 활용하여 학습 일정을 계획하고, 학습 목표를 달성하는 방법에 대한 조언을 원합니다.', 'test61' ,DEFAULT, DEFAULT, 7);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 더 깊이 이해하기 위한 질문 및 논의 점을 어떻게 찾을 수 있을까요?', '동영상 강의를 더 깊이 이해하고, 관련 질문을 찾는 방법을 알려주세요.', 'test81' ,DEFAULT, DEFAULT, 8);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 보면서 메모를 어떻게 작성하고 정리할 수 있을까요?', '동영상 강의를 보면서 효과적인 메모 작성과 정리 방법을 알고 싶습니다.', 'test91' ,DEFAULT, DEFAULT,9);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 효과적으로 검색하고 필요한 내용을 찾는 방법이 뭐가 있을까요?', '동영상 강의를 효과적으로 검색하고, 원하는 내용을 빠르게 찾는 방법을 알려주세요.', 'test71' ,DEFAULT, DEFAULT,10);

-- 답변글
INSERT INTO qna VALUES (DEFAULT, '어떤 주제의 강의를 들어야 할까요?','강의 주제를 선택할 때, 관심 있는 분야나 목표에 따라 선택하는 것이 중요합니다. 관심 있는 주제에 대한 학습은 더 효과적일 수 있으며, 목표를 달성하는데 도움이 됩니다.','admin', DEFAULT, 1,1);
INSERT INTO qna VALUES (DEFAULT, '동영상 학습에서 집중력을 높이는 방법이 뭐가 있나요?','집중력을 높이기 위해 정해진 시간 동안 주의를 집중하고, 학습 환경을 조절하고 휴식을 취하는 등의 방법을 사용할 수 있습니다.','admin', DEFAULT, 1,2);
INSERT INTO qna VALUES (DEFAULT, '어떻게 강의 동영상을 효과적으로 정리하고 학습할 수 있을까요?','동영상 강의를 정리하기 위해 요약 노트를 작성하고, 중요한 부분을 표시하며, 관련 자료를 정리하는 것이 도움이 됩니다.','admin', DEFAULT, 1,3);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의 시간을 어떻게 최적화할 수 있을까요?','동영상 강의 시간을 최적화하기 위해 목표를 설정하고, 공부 시간을 일정하게 유지하며, 분량을 나누어 학습하는 것이 중요합니다.','admin', DEFAULT, 1,4);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 볼 때 주의력을 유지하는 방법이 뭐가 있을까요?','주의력을 유지하기 위해 학습 공간을 정리하고, 동영상을 공부 목적으로 시청하며, 주의력 향상을 위한 기술을 사용할 수 있습니다.','admin', DEFAULT, 1,5);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 저장하고 오프라인에서 어떻게 시청할 수 있을까요?','동영상을 저장하기 위해 온라인 다운로더를 사용하고, 저장된 동영상을 오프라인 모드에서 시청할 수 있는 앱을 활용할 수 있습니다.','admin', DEFAULT, 1,6);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 활용하여 스스로 학습 스케줄을 계획하는 방법이 뭐가 있나요?','학습 스케줄을 계획하기 위해 목표를 설정하고, 시간을 할당하며, 주간 계획을 세우는 것이 도움이 됩니다.','admin', DEFAULT, 1,7);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 더 깊이 이해하기 위한 질문 및 논의 점을 어떻게 찾을 수 있을까요?','동영상을 더 깊이 이해하기 위해 관련 서적을 찾거나, 동영상에서 제기된 질문을 따라가며 더 많은 정보를 탐구할 수 있습니다.','admin', DEFAULT, 1,8);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 보면서 메모를 어떻게 작성하고 정리할 수 있을까요?','메모를 작성하고 정리하기 위해 중요한 내용을 요약하고, 주요 포인트를 강조하며, 메모를 주기적으로 정리하는 것이 도움이 됩니다.','admin', DEFAULT, 1,9);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 효과적으로 검색하고 필요한 내용을 찾는 방법이 뭐가 있나요?','동영상을 검색하기 위해 키워드를 사용하고, 정확한 제목 또는 주제를 입력하며, 검색 결과를 필터링하는 방법을 사용하여 원하는 내용을 빠르게 찾을 수 있습니다.','admin', DEFAULT, 1,10);

-- 자료실 테이블 생성
CREATE TABLE dataroom (
  articleNo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id VARCHAR(20) NOT NULL,
  title varchar(100) NOT NULL,
  content varchar(2000) NOT NULL,
  regdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- 업로드 된 파일 정보 테이블 생성
CREATE TABLE fileInfo(
  no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  articleNo INT,
  saveFolder VARCHAR(300) NOT NULL,
  originFile VARCHAR(300) NOT NULL,
  saveFile VARCHAR(300) NOT NULL,
  FOREIGN KEY(articleNo) REFERENCES dataRoom(articleNo) ON DELETE CASCADE 
);


-- 이벤트 글 테이블
CREATE TABLE event (
	eno int  PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(100) NOT NULL,
   content VARCHAR(5000) NOT NULL,
   STATUS VARCHAR(5) CHECK(status IN(0, 1)),
   sdate DATE,
   edate DATE,
   author VARCHAR(16),
   regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   cnt INT DEFAULT 0 NOT NULL
);

-- 이벤트
INSERT INTO event VALUES (DEFAULT, '학습의 새로운 차원을 경험하세요 - 특별한 이벤트로 채워진 교육 플랫폼!' , '우리의 온라인 강의 플랫폼은 더 많은 학습 기회와 혁신적인 리소스로 여러분을 충격적으로 만족시킬 것입니다. 이벤트 기간 동안, 첫 등록 고객에게 10% 할인 혜택을 드립니다! 또한, 무료 워크샵 및 새로운 코스 미리보기가 기다리고 있습니다. 지금 등록하고 지식의 바다에서 수영하세요!',
'1' ,'2023-10-24', '2023-11-10', '관리자', DEFAULT, DEFAULT);
INSERT INTO event VALUES (DEFAULT, '실력을 키우고, 미래를 위한 초특가 할인!' , '이벤트 시즌이 돌아왔습니다! 저희 교육 인터넷 강의 플랫폼에서 최신 강의와 튜토링을 저렴하게 이용하고, 미래를 위한 기술을 습득하세요. 이벤트 기간 동안, 모든 코스에 대한 초특가 할인을 제공하며, 추가로 신규 등록자에게 무료 실습 자료를 제공합니다. 더 이상 학습의 기회를 놓치지 마세요!',
'1' ,'2023-10-19', '2023-11-20', '관리자', DEFAULT, DEFAULT);
INSERT INTO event VALUES (DEFAULT, '오프라인 학습의 매력, 그리고 무료 워크샵 초대장!' , '오프라인 강의 사이트에서 우리와 함께 학습의 새로운 차원을 경험하세요! 특별한 이벤트 기간 동안, 모든 신규 등록자에게 무료 워크샵 초대장을 드립니다. 또한, 2인 이상 그룹 등록 시 추가 할인 혜택을 제공합니다. 온라인 학습 외에도 현장에서의 만남을 즐기며, 함께 성장하세요.',
'1' ,'2023-10-23', '2023-10-30', '관리자', DEFAULT, DEFAULT);
INSERT INTO event VALUES (DEFAULT, '스페셜 강의 시리즈 출시 - 한 단계 더 나아가기!' , '우리의 교육 플랫폼은 스페셜 강의 시리즈 출시를 자랑스럽게 발표합니다. 이 시리즈는 한 단계 더 나아가기를 원하는 학습자들을 위한 것이며, 이벤트 기간 동안 구매 시 추가 혜택을 드립니다. 더 나은 스킬과 지식을 위한 특별한 강의를 놓치지 마세요!',
'0' ,'2023-08-15', '2023-09-10', '관리자', DEFAULT, DEFAULT);
INSERT INTO event VALUES (DEFAULT, '캐리어를 높여줄 무료 취업 워크샵 개최!' , '취업을 향한 여정을 돕기 위해, 저희는 무료 취업 워크샵을 개최합니다. 이 워크샵은 이벤트 기간 동안 모든 학습자에게 열려 있으며, 취업 전문가와의 만남과 조언을 통해 캐리어를 높이는데 도움이 됩니다. 미래의 성공을 위한 첫 걸음을 내딛으세요!',
'0' ,'2023-10-10', '2023-10-17', '관리자', DEFAULT, DEFAULT);


-- 회원의 이벤트 접수
CREATE TABLE apply(
   appno INT AUTO_INCREMENT PRIMARY KEY,		/* 접수 번호 */
   eno INT NOT NULL,									/* 이벤트글 번호 */
   id VARCHAR(100) NOT NULL,						/* 당첨자 아이디 */
   name VARCHAR(100) NOT NULL,					/* 당첨자 이름 */
   tel VARCHAR(13),									/* 전화번호 */
   FOREIGN KEY(eno) REFERENCES event(eno)ON DELETE CASCADE ,
   FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE);
   

-- 이벤트 신청자 
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test111', '김이름', '010-1111-2562');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test121', '이이름', '010-2323-1212');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test122', '박이름', '010-2525-2432');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test31', '이이름', '010-7575-2267');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test41', '최이름', '010-6868-3562');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test51', '한이름', '010-1447-5672');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test61', '백이름', '010-1355-6782');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test71', '오이름', '010-1156-7892');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test13', '강이름', '010-1177-2890');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test12', '서이름', '010-2311-2567');
	INSERT INTO apply (eno, id, NAME, tel) VALUES (3, 'test81', '권이름', '010-4511-2345');
	 
	  
-- 당첨자 리스트
CREATE TABLE winnerList(
   appno INT AUTO_INCREMENT PRIMARY KEY NOT NULL,			
   eno INT NOT NULL,										
   id VARCHAR(100) NOT NULL,										
   name VARCHAR(100) NOT NULL,						
   tel VARCHAR(13),													
   FOREIGN KEY(eno) REFERENCES event(eno) ON DELETE CASCADE,
   FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE);

 
-- 당첨자 발표 글
CREATE TABLE winner(
	wno INT PRIMARY KEY AUTO_INCREMENT,			/* 당첨글 번호 */
   eno INT NOT NULL,									/* 이벤트 글 번호 */
   title VARCHAR(100),								/* 글 제목 */
   content VARCHAR(1000),							/* 글 내용 */
   author VARCHAR(100),								/* 작성자 */
   resdate datetime DEFAULT CURRENT_TIMESTAMP,	/* 작성일 */
   FOREIGN KEY(eno) REFERENCES event(eno));


-- 출석체크 테이블
CREATE TABLE attendance (
   ano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   id VARCHAR(20),
   attend DATE DEFAULT CURRENT_DATE);
   
	
-- 과목 테이블 (과목코드, 과목명)
CREATE TABLE subject(
	scode VARCHAR(10) PRIMARY KEY,
	sname VARCHAR(200) NOT NULL
);


-- 과목 테이블 더미데이터
INSERT INTO subject
VALUES('wr', '논술');
INSERT INTO subject
VALUES('en', '영어');
INSERT INTO subject
VALUES('ma', '수학');
INSERT INTO subject
VALUES('ko', '국어');
INSERT INTO subject
VALUES('ch', '중국어');


-- 강사 테이블 (강사코드, 강사명, 연락처, 이메일, 강사소개, 강사 이미지)
CREATE TABLE teacher(
	tcode INT PRIMARY KEY AUTO_INCREMENT,
	tid VARCHAR(20) NOT NULL,
	tname VARCHAR(50) NOT NULL,
	ttel VARCHAR(20) NOT NULL,
	temail VARCHAR(100) NOT NULL,
	tcontent VARCHAR(1000) NOT NULL,
	saveFile VARCHAR(300) NOT NULL
);

INSERT INTO teacher VALUES (DEFAULT,'test101', '김석우', '010-1111-2222', 'ejlee@email.com', '논술 전문가로, 명쾌한 논리와 풍부한 어휘력을 강조한 논술 교육을 제공합니다.', 'writingTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test9999', '안유진', '010-9876-5432','jwhan@email.com','논술의 스타일과 목표에 따라 학생들을 개별화된 작문 지도로 이끌어, 각자의 논술 능력을 향상시킵니다.','an.png');
INSERT INTO teacher VALUES (DEFAULT,'test0888', '강영현','010-5555-5555','dhkwon@email.com','경험 많은 영어 강사인 존은 학생들의 영어 작문 및 문법 실력 향상을 중점으로 둡니다.','englishTeacher2.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0777' ,'유지민','010-9999-9999','sjlee@email.com','TOEFL 자격증 강사로서 마이클은 학생들을 영어 능력 시험을 준비하는 데 도움을 주며 시험 대비 전략을 강조합니다.','englishTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0666', '임창균','010-2222-3335','sjchoi@email.com','수학적 논리와 수학 문제 해결 능력을 강조하며, 학생들이 어려운 문제를 해결하는 방법을 습득하도록 도움을 제공합니다.','mathTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0555', '고윤정','010-3333-4444','mhkang@email.com','수학을 흥미롭게 만들기 위해 현실적인 응용과 재미있는 수학 문제를 활용한 수업을 제공합니다.','mathTeacher2.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0444', '팜하니','010-3333-1117','yhbaek@email.com','문학과 문법을 조화롭게 가르치며, 학생들의 언어 능력을 향상시키고 작문 스킬을 개발합니다.','koreanTeacher.png');
INSERT INTO teacher VALUES (DEFAULT,'test0333', '이준기','010-2222-3338','hjcho@email.com','문학 작품 해석과 글쓰기 능력 향상에 중점을 둔 강의를 통해 학생들을 지원합니다.','koreanTeacher2.png');
INSERT INTO teacher VALUES (DEFAULT,'test0222', '송우기','010-2222-3339','jwsong@email.com','문법 교육과 작문 기술 강화를 통해 학생들이 효과적으로 글을 표현할 수 있도록 도와줍니다.','chinaTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0111', '진항생','010-2222-3330','myu@email.com','중국어 교육 전문가로, 학생들이 중국어 문자 및 문법을 정확하게 이해하도록 돕습니다.','chinaTeacher2.jpeg');


-- 교재 테이블 생성(교재코드, 교재이름, 교재소개, 저자, 가격)
CREATE TABLE book (
	bcode VARCHAR(20) primary key NOT NULL ,
	bname VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	author VARCHAR(1000) NOT NULL,
	bprice INT(11) NOT NULL
);



INSERT INTO book VALUES ('wr01', '논술 작성의 기술', '이 책은 논술을 작성하고 구조화하는 방법에 대한 실용적인 가이드를 제공합니다. 예시와 연습 문제를 통해 논술 작성 능력을 향상시킬 수 있습니다.','김석우',12000);
INSERT INTO book VALUES ('wr02', '논술의 비밀', '"논술의 비밀"은 효과적인 논술 작성을 위한 전략과 기술을 설명하는 책입니다. 각 섹션은 실용적인 팁과 예시로 구성되어 있어, 논술 능력 향상에 도움이 됩니다.','안유진',10000);
INSERT INTO book VALUES ('en01', '영어 작문의 기술','이 책은 영어로 효과적인 글을 쓰는 방법에 대한 기술과 전략을 제공합니다. 문법, 구문, 스타일 및 논리적인 구조화에 대한 교육적 내용을 다루며, 다양한 예시와 실습 문제를 제공하여 학습자가 논술 작성 능력을 향상시킬 수 있습니다.','강영현',12000);
INSERT INTO book VALUES ('en02', '영어 표현의 미학','"영어 표현의 미학"은 영어 작문을 예술로 간주하는 방법에 중점을 둡니다. 논술의 표현력과 스타일을 향상시키는 데 도움이 되는 다양한 문학 작품과 글쓰기 예시를 제공합니다. ','유지민',10000);
INSERT INTO book VALUES ('ko01', '국어 문법의 이해','이 책은 한국어 문법에 대한 이해를 향상시키는 데 도움을 줍니다. 다양한 문법 규칙과 예시를 제공하여 학습자가 효과적으로 표현할 수 있는 능력을 향상시킵니다.','고윤정',6000);
INSERT INTO book VALUES ('ko02', '국어 어휘 확장','이 책은 어휘력을 향상시키는데 중점을 두며, 다양한 어휘와 표현을 소개합니다. 어휘 확장을 통해 논술 작성과 글쓰기 능력을 향상시키는데 도움이 됩니다.','임창균',8000);
INSERT INTO book VALUES ('ma01', '수학의 기초','"수학의 기초"는 수학 개념을 이해하기 위한 기초부터 시작하는 책으로, 수학의 기본 원리와 수학적 사고 방법을 소개합니다. 학생들에게 기초를 강화하고 수학적 지식을 쌓는 데 도움이 됩니다.','팜하니',9000);
INSERT INTO book VALUES ('ma02', '고급 수학: 응용과 연습','이 책은 고급 수학 주제를 다루며, 수학을 실생활과 다양한 분야에 적용하는 방법을 제공합니다. 더 복잡한 수학 문제를 다루고자 하는 학생들에게 유용할 것입니다.','이준기',8000);
INSERT INTO book VALUES ('ch01', '중국어 기초 교재','이 책은 중국어의 기초를 가르치는 데 도움을 주는 교재로, 발음, 기본 어휘, 문법, 그리고 일상 대화를 다룹니다. 중국어를 처음 배우는 초보자에게 유용합니다.','송우기',12000);
INSERT INTO book VALUES ('ch02', '중급 중국어 학습 가이드','"중급 중국어 학습 가이드"는 중급 수준의 학습자를 위한 자료로, 의사소통 능력 향상 및 중국 문화에 대한 이해를 돕는 내용을 다룹니다. 중국어를 더 깊이 공부하고자 하는 학습자에게 유용합니다.','진항생',6000);


-- 강의 테이블 (강의코드, 강의명, 과목코드, 강사코드, 교재코드, 강의 소개, 강의 단가, 수강인원, 강의 썸네일(saveFile), 강의 시작일, 강의 종료일, (오프라인 시)강의 시작시간, 온오프 여부, 강의실)
CREATE TABLE lecture(
	lcode VARCHAR(50) PRIMARY KEY,
	lname VARCHAR(500) NOT NULL,
	scode VARCHAR(10) NOT NULL,
	tcode INT,
	bcode VARCHAR(10),
	lcontent VARCHAR(1000) NOT NULL,
	lprice INT DEFAULT 0,
	maxStudent INT DEFAULT 0,
	saveFile VARCHAR(300) NOT NULL,
	sdate DATE NOT NULL,
	edate DATE NOT NULL,
	stime TIME,
	state VARCHAR(10) CHECK(state IN ('on', 'off', 'close')),
	classroom VARCHAR(10),
	FOREIGN KEY(scode) REFERENCES SUBJECT(scode),
	FOREIGN KEY(tcode) REFERENCES teacher(tcode),
	FOREIGN KEY(bcode) REFERENCES book(bcode)
); 

-- 강의
--논술
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('wr1', '논술 마스터 클래스: 효과적인 논증 기술' , 'wr', 2, 'wr01','이 강좌는 논술 능력 향상을 위한 완벽한 기회입니다. 효과적인 논증 기술을 배우고 논술 작성의 전문가가 되는 방법을 탐구하세요. 논술을 작성할 때 필요한 연구, 구조화, 그리고 논증 능력을 향상시키는 방법을 배울 것입니다.', 1000, 1, '','2023-11-01','2023-12-30', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('wr2', '논술 작성의 기술: 명료하고 강력한 글쓰기' , 'wr', 3, 'wr02','이 논술 강좌는 명료하고 강력한 글쓰기를 통해 논술 작성 기술을 향상시키는 방법을 다룹니다. 효과적인 문장 구성, 철저한 논리, 그리고 효과적인 증거 사용을 통해 논술을 더 강력하게 만드는 방법을 배우세요.', 3000, 20 ,'' ,'2023-11-10','2024-01-04', '19:23:00','on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('wr3', '주제 선정부터 완성까지: 논술 작성의 A-Z', 'wr', 2, 'wr01' ,'이 강좌는 논술 작성 과정을 주제 선정부터 완성까지 체계적으로 안내합니다. 논술 주제 선택, 연구 전략, 계획, 초고 작성, 그리고 수정 단계를 효과적으로 관리하고 완벽한 논술을 작성하세요.', 4000, 30 ,'', '2023-11-20','2023-12-20', '13:23:00', 'on');
	INSERT INTO lecture VALUES 
	('wr4', '비교와 대조: 논술의 핵심 논증 방법', 'wr', 2,'wr01' ,'이 강좌는 논술에서 비교와 대조를 사용하여 강력한 주장을 펼치는 방법을 탐구합니다. 비교와 대조를 통해 논술을 더 강력하게 만들고, 주제에 대한 깊은 이해를 얻으세요.', 10000, 1, '','2023-11-01','2023-12-30', '14:23:00', 'off', '강의실6');
	INSERT INTO lecture VALUES 
	('wr5', '논술 피드백과 자기평가: 작성 능력 향상을 위한 과정' , 'wr', 3, 'wr02','이 강좌는 자기평가와 피드백을 통해 논술 작성 능력을 향상시키는 방법을 제시합니다. 자신의 논술을 평가하고 향상시키는 방법을 배우며, 강사와 피어 리뷰를 통해 풍부한 피드백을 얻을 수 있습니다. 논술 작성 기술을 업그레이드하세요.', 15000, 10, '','2023-11-13','2023-12-30', '19:23:00', 'off', '강의실8');
	
--영어	
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('en6', '영어 회화 마스터: 일상에서 비즈니스까지' , 'en', 4, 'en01','이 강좌는 일상적인 상황부터 비즈니스 커뮤니케이션까지 다양한 상황에서 영어로 원활하게 대화할 수 있는 능력을 키우기 위해 설계되었습니다. 실생활 예시를 통해 효과적인 회화 스킬을 습득하고 능숙한 영어 소통자로 성장하세요.', 1000, 1, '','2023-11-01','2023-12-30', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('en7', '영어문화와 문학 탐험: 클래식에서 현대까지' , 'en', 5, 'en02','이 강좌는 영어권 문화와 문학을 탐험하는 기회를 제공합니다. 클래식 작품부터 현대 작품까지 다양한 글쓰기 스타일과 문화적 맥락을 이해하며, 영어 언어와 문학의 아름다움을 발견하세요.', 2000, 1, '','2023-11-10','2024-01-04', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('en8', '영어 시험 대비: TOEFL, IELTS, TOEIC 마스터 클래스' , 'en', 4, 'en01','이 강좌는 TOEFL, IELTS, TOEIC와 같은 영어 시험 대비에 필요한 전략과 스킬을 제공합니다. 시험 전략, 리스닝, 리딩, 라이팅, 스피킹 등 다양한 영역에서 자신의 점수를 향상시키는 방법을 배우세요.', 4000, 1, '', '2023-11-02','2023-12-20', '16:23:00', 'on');
	INSERT INTO lecture
	VALUES ('en9', '영어 문법 마스터: 신속하고 정확한 문장 구성' , 'en', 4, 'en01','올바른 문법 사용은 영어 능력을 향상시키는 데 중요합니다. 이 강좌에서는 영어 문법의 핵심 원칙을 마스터하고, 문장을 더 신속하고 정확하게 구성하는 방법을 배우며, 효과적인 글쓰기를 향상시킵니다.', 10000, 1, '', '2023-11-14','2023-12-29', '16:23:00', 'off', '강의실4');
		INSERT INTO lecture
	VALUES ('en10', '비즈니스 영어: 프로페셔널 커뮤니케이션 스킬' , 'en', 5, 'en02','이 강좌는 비즈니스 환경에서 영어로 효과적으로 커뮤니케이션하는 데 필요한 스킬을 강화합니다. 비즈니스 미팅, 이메일 커뮤니케이션, 프레젠테이션, 협상 등 다양한 비즈니스 상황에서 자신감을 갖고 영어로 효과적으로 소통하는 방법을 배우세요.', 15000, 1, '', '2023-11-20','2023-12-25', '16:23:00', 'off','강의실5');
	
--수학
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ma11', '수학의 기초를 다지는 강좌: 초급 수학의 세계' , 'ma', 6, 'ma01','이 강좌는 수학의 기초부터 시작하여, 수학에 대한 기본 개념과 기초 스킬을 강화하는 데 도움을 줍니다. 실생활 문제 해결을 위한 수학적 사고 능력을 향상시키며, 수학의 기초에 대한 확실한 이해를 갖는데 도움을 줍니다.', 1000, 1, '','2023-11-01','2023-12-30', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ma12', '고급 대수학: 방정식, 함수, 그리고 그 이상' , 'ma', 7, 'ma02','이 강좌는 대수학의 고급 주제를 다룹니다. 방정식, 함수, 그래프 이론 등에 대한 심화 내용을 다루며, 수학적 사고를 극대화하고 복잡한 수학 문제를 해결하는 방법을 배우게 됩니다.', 3000, 1, '','2023-11-10','2024-01-04', '17:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ma13', '미적분학의 기초: 미분과 적분의 이해' , 'ma', 6, 'ma01','이 강좌는 미적분학의 기초 개념을 다루며, 미분과 적분을 이해하는 방법을 가르칩니다. 함수의 변화와 면적 계산을 이해하고, 미적분학의 핵심 원리를 숙지합니다.', 4000, 1, '', '2023-11-02','2023-12-20', '16:23:00', 'on');
	INSERT INTO lecture
	VALUES ('ma14', '선형대수학: 행렬, 벡터, 그리고 선형 변환' , 'ma', 7, 'ma01','이 강좌는 선형대수학의 핵심 주제를 다룹니다. 행렬과 벡터 연산, 선형 변환의 이해를 통해 선형대수학의 기본 원리를 익히고 응용할 수 있도록 가르칩니다.', 10000, 1, '', '2023-11-14','2023-12-30', '13:23:00', 'off', '강의실3');
	INSERT INTO lecture
	VALUES ('ma15', '수학 모델링과 응용: 현실 문제를 해결하는 방법' , 'ma', 7, 'ma02','이 강좌는 수학을 현실 세계의 문제를 해결하는 도구로 활용하는 방법을 다룹니다. 수학 모델링과 응용을 통해 현실 세계의 복잡한 문제를 해결하고, 수학을 현실에서의 문제 해결 도구로 활용하는 방법을 배우게 됩니다.', 15000, 1, '', '2023-11-20','2023-12-10', '14:23:00', 'off', '강의실9');

--국어
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ko16', '문학 감상과 분석: 대표작들의 해석' , 'ko', 8, 'ko01','이 강좌는 문학 작품의 감상과 분석을 통해 문학을 더 깊이 이해하는 방법을 제공합니다. 대표적인 문학 작품들을 읽고, 문학적 디테일과 작품의 주요 주제에 대한 해석 능력을 향상시킵니다.', 1000, 1, '','2023-11-01','2023-12-30', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ko17', '문법의 기초와 활용: 쓰기와 편집 능력 향상' , 'ko', 9, 'ko02','이 강좌는 문법의 기초를 이해하고 올바른 문장 구조와 화법을 사용하는 방법을 가르칩니다. 논문, 글쓰기, 편집 등 다양한 글쓰기 과제를 수행할 때 필요한 스킬을 향상시킵니다.', 1000, 1, '','2023-11-10','2024-01-04', '12:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ko18', '문학과 역사: 작품들의 사회적 맥락' , 'ko', 8, 'ko01','이 강좌는 문학 작품을 사회적, 역사적 맥락에서 이해하는 방법을 다룹니다. 작품과 작가의 생애, 그리고 작품이 나온 시대를 통해 문학 작품을 더 깊이 이해하고 해석하는 능력을 강화합니다.', 1000, 1, '', '2023-11-02','2023-12-20', '17:23:00', 'on');
	INSERT INTO lecture
	VALUES ('ko19', '작문과 창작: 시, 소설, 글귀 등의 창작 과정' , 'ko', 9, 'ko01','이 강좌는 창작 문학의 기초를 제공하며, 시, 소설, 글귀 등을 직접 창작하는 방법을 가르칩니다. 창작 과정과 글쓰기 스킬을 향상시키며, 창작 문학의 세계에 더 깊이 몰입합니다.', 1000, 1, '', '2023-11-14','2023-12-30', '13:23:00', 'off', '강의실4');
	INSERT INTO lecture
	VALUES ('ko20', '토론과 비평: 작품 분석과 토론 스킬 강화' , 'ko', 9, 'ko02','이 강좌는 문학 작품을 비평하고 토론하는 능력을 향상시키는 방법을 다룹니다. 다양한 작품을 읽고 비평하는 과정을 통해 문학에 대한 풍부한 이해와 토론 스킬을 향상시킵니다.', 1000, 1, '', '2023-11-20','2023-12-25', '17:23:00', 'off', '강의실9');
	
--중국어
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ch21', '중국어 초급 입문: 기초 발음과 어휘' , 'ch', 10, 'ch01','이 강좌는 중국어 초보자들을 위한 입문 강좌로, 중국어의 발음과 기본 어휘를 학습합니다. 중국어를 처음 배우는 분들을 위한 필수 강좌로, 자신감을 갖고 중국어를 사용할 수 있도록 돕습니다.', 1000, 1, '','2023-11-01','2023-12-30', '16:23:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ch22', '실용 중국어 회화: 일상 대화 스킬' , 'ch', 11, 'ch02','이 강좌는 중국어로 일상 생활에서 필요한 대화 스킬을 향상시키는데 중점을 두며, 여행, 소셜 상황, 비즈니스 커뮤니케이션 등 다양한 상황에서 자신의 의사를 효과적으로 표현하고 이해할 수 있는 능력을 강화합니다.', 1000, 1, '','2023-11-10','2024-01-04', '16:34:00', 'on');
	INSERT INTO lecture (lcode, lname, scode, tcode, bcode, lcontent, lprice, maxStudent, saveFile, sdate, edate, stime, state) 
	VALUES ('ch23', '중국어 글쓰기 마스터: 창작과 학술 글쓰기' , 'ch', 10, 'ch01','이 강좌는 중국어로 글을 쓰는 기술을 개발하고자 하는 학습자를 위한 것으로, 창작 글쓰기와 학술 글쓰기에 필요한 스킬을 강화합니다. 다양한 글쓰기 과제를 통해 자신의 글쓰기 능력을 높이는데 도움을 줍니다.', 1000, 1, '', '2023-11-02','2023-12-15', '17:56:00', 'on');
	INSERT INTO lecture
	VALUES ('ch24', '중국어로 읽는 중국문학: 고전과 현대 작품' , 'ch', 10, 'ch01','이 강좌는 중국문학을 탐구하고자 하는 학습자를 위한 것으로, 중국의 고전 작품부터 현대 작품까지 다양한 문학작품을 읽고 이해하도록 돕습니다. 작품의 문학적, 역사적 맥락을 이해하며 중국문학의 아름다움을 발견합니다.', 1000, 1, '', '2023-11-30','2023-12-25', '14:46:00', 'off', '강의실1');
	INSERT INTO lecture
	VALUES ('ch25', '중국문화와 역사: 언어를 통해 이해하는 중국' , 'ch', 11, 'ch02','이 강좌는 중국의 언어, 문화, 역사를 깊이 이해하고자 하는 학습자를 위한 것으로, 중국의 다양한 측면을 탐구합니다. 중국의 역사, 문화, 관례, 언어적 맥락을 이해하며 중국을 보다 폭넓게 이해하는데 도움을 줍니다.', 1000, 1, '', '2023-11-11','2023-12-30', '13:23:00', 'off', '강의실2');


-- 커리큘럼 (커리큘럼코드, 강의코드, 강좌 제목, 강의 파일, 강의 시간)
CREATE TABLE curriculum(
	ccode INT PRIMARY KEY AUTO_INCREMENT,
	lcode VARCHAR(50) NOT NULL,
	cname VARCHAR(500) NOT NULL,
	cvideo VARCHAR(500),
	FOREIGN KEY(lcode) REFERENCES lecture(lcode) ON DELETE CASCADE
);

-- 강의 리뷰(리뷰코드, 강의코드, 학생아이디, 별점, 리뷰 내용)
CREATE TABLE review(
	rcode INT AUTO_INCREMENT PRIMARY KEY,
	lcode VARCHAR(50) NOT NULL,
	id VARCHAR(20) NOT NULL,
	star INT NOT NULL DEFAULT 0,
	content VARCHAR(1000) NOT NULL,
	FOREIGN KEY (lcode) REFERENCES lecture(lcode) ON DELETE CASCADE
);

-- 수강(수강코드, 강의코드, 학생아이디, 수강총시간, 수강 완료여부)
CREATE TABLE register(
	rcode INT AUTO_INCREMENT PRIMARY KEY,
	lcode VARCHAR(50) NOT NULL,
	id VARCHAR(20) NOT NULL,
	completed BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE
);

-- 수강생 강의 수강 정보 테이블
CREATE TABLE studyInfo(
	scode INT AUTO_INCREMENT PRIMARY KEY,
	ccode INT NOT NULL,
	id VARCHAR(20) NOT NULL,
	studyTime DOUBLE DEFAULT 0,
	completed BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE,
	FOREIGN KEY(ccode) REFERENCES curriculum(ccode) ON DELETE CASCADE
);

-- 오프라인 강의 출석 번호 저장 테이블
CREATE TABLE saveAttendCode(
	lcode VARCHAR(50) PRIMARY KEY,	/* 과목코드 */
	attendCode INT NOT NULL				/* 과목코드별 출석코드 */
);


-- 오프라인 강의 출석체크 테이블
CREATE TABLE lectureAttend(
	id VARCHAR(20) NOT NULL,
	lcode VARCHAR(50) NOT NULL,
	adate DATE DEFAULT CURRENT_DATE,
	atime TIME DEFAULT CURRENT_TIME,
	atype VARCHAR(10) NOT NULL,
	CONSTRAINT lectureattend_PK PRIMARY KEY (id, lcode, adate),
	FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE,
	FOREIGN KEY(lcode) REFERENCES lecture(lcode) ON DELETE CASCADE
);

-- TodoList (list 넘버, 제목, 상태)
CREATE TABLE todo(
	tdno INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(20) NOT NULL,
	tdtitle VARCHAR(200),
	STATUS BOOLEAN DEFAULT false);


CREATE TABLE lecBoard(
  qno int PRIMARY KEY AUTO_INCREMENT,   			-- 번호
  lcode VARCHAR(50) NOT NULL,                   -- 강의코드
  title VARCHAR(100) NOT NULL,   					-- 제목
  content VARCHAR(1000) NOT NULL,   				-- 내용
  author VARCHAR(16),   								-- 작성자
  resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 등록일
  lev INT DEFAULT 0, 									-- 질문(0), 답변(1)
  par INT DEFAULT 0,													-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
  FOREIGN KEY(author) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY(lcode) REFERENCES lecture(lcode) ON DELETE CASCADE);
  
  -- 배송 테이블 생성(배송번호, 결제번호, 아이디, 주소, 번호, 배송회사, 배송전화번호, 배송상태, 배송시간, 배송예정일자, 배송코드)
CREATE TABLE delivery(
	 dno INT PRIMARY KEY AUTO_INCREMENT,
	 pno INT, 					
	 id VARCHAR(20),				
	 addr VARCHAR(200),	
	 tel VARCHAR(13) NOT NULL,				
	 dcom VARCHAR(100),					
	 dtel VARCHAR(13),			
	 dstatus INT DEFAULT 0,				
	 ddate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	 edate VARCHAR(13),						
	 dcode VARCHAR(30),
	 FOREIGN KEY (id) REFERENCES user(id) ON DELETE CASCADE				
);


<<<<<<< HEAD
-- 결제 테이블 생성(고유번호, 결제제목, 강의코드, 교재코드, 강사코드, 아이디, 결제방법, 결제회사, 결제금액, 배송번호, 계좌번호, 결제일자)
create table payment(
	   pno INT primary KEY AUTO_INCREMENT,
=======
--결제 테이블 생성(고유번호, 결제제목, 강의코드, 교재코드, 강사코드, 아이디, 결제방법, 결제회사, 결제금액, 배송번호, 계좌번호, 결제일자)
CREATE TABLE payment(
	   pno INT PRIMARY KEY AUTO_INCREMENT,
>>>>>>> be9d7cc0c79ed87fb8261d186e5592ee24da495a
	   title VARCHAR(100) NOT NULL,
		lcode VARCHAR(50) NOT NULL,		
		bcode VARCHAR(20) NOT NULL,
		tcode INT,
	   id VARCHAR(20) NOT NULL,	
	   method VARCHAR(100),		
	   com VARCHAR(100),			
	   price INT DEFAULT 1000,
		dno INT,	
	   account VARCHAR(100) NOT NULL,
	   resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	   FOREIGN KEY (lcode) REFERENCES lecture (lcode) ON DELETE CASCADE,
	   FOREIGN KEY (bcode) REFERENCES book (bcode) ON DELETE CASCADE,
	   FOREIGN KEY (tcode) REFERENCES teacher (tcode) ON DELETE CASCADE,
	   FOREIGN KEY (dno) REFERENCES delivery(dno) ON DELETE CASCADE,
		FOREIGN KEY (id) REFERENCES user (id) ON DELETE CASCADE
);


-- 출고 테이블 생성(출고 번호, 결제번호, 배송코드, 출고 가격, 수량, 출고일자)
CREATE TABLE serve(
    sno INT PRIMARY KEY AUTO_INCREMENT,
	 pno INT,							
    bcode VARCHAR(20) NOT NULL,		              
    sprice INT DEFAULT 1000,					 
    amount INT DEFAULT 1,				         	
    resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pno) REFERENCES payment(pno) ON DELETE CASCADE,
	 FOREIGN KEY (bcode) REFERENCES book (bcode) ON DELETE CASCADE    
);



-- 입고 테이블 생성(입고 번호, 교재코드, 수량, 입고가격, 입고일자)  
CREATE TABLE receive(
   rno INT primary KEY AUTO_INCREMENT,						
   bcode VARCHAR(20) NOT NULL,                          
   amount INT default 1,	         			
   rprice INT default 1000,			    		
   resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (bcode) REFERENCES book (bcode) ON DELETE CASCADE    
);    


-- 핵심 기능: 공지사항, 자료실, 회원, 자유게시판, 강의별 댓글,  교재와 시범강의, 결제
-- 부가 기능: 파일업로드, 채팅, 타계정 또는 SNS 로그인, 수강평, 달력, 가입 시 축하 이메일 보내기, 비밀번호 변경 시 이메일 보내기, 온라인 평가, 진도관리, 학습 스케줄러, 나의 강의실 등