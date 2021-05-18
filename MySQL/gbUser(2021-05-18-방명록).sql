-- 여기는 gbUser 접속
SHOW DATABASES;
CREATE DATABASE guestbook;
USE guestbook;
DROP TABLE tbl_guest_book;
CREATE TABLE tbl_guest_book (

	gb_seq	BIGINT	AUTO_INCREMENT	PRIMARY KEY,
	gb_date	VARCHAR(10)	NOT NULL,	
	gb_time	VARCHAR(10)	NOT NULL,	
	gb_writer	VARCHAR(30)	NOT NULL,	
	gb_email	VARCHAR(30)	NOT NULL,	
	gb_password	VARCHAR(125)	NOT NULL,	
	gb_content	VARCHAR(2000)	NOT NULL	
);

INSERT INTO tbl_guest_book(gb_date, gb_time, gb_writer,
gb_email, gb_password, gb_content)
VALUE(
'2021-05-18', '10:28:00', 'wjdfbdns819',
'wjdfbdns819@wjdfbdns819.com', '12345', '내일은 석가탄신일');

SELECT * FROM tbl_guest_book;

SELECT COUNT(*) FROM tbl_guest_book;

SELECT * FROM tbl_guest_book
WHERE gb_date = '2021-05-18';

SELECT * FROM tbl_guest_book
ORDER BY gb_seq DESC;

-- 날짜와 시간을 기준으로 최근 글이 제일 먼저 보이도록 조회
SELECT * FROM tbl_guest_book
ORDER BY gb_date DESC, gb_time DESC;

-- UPDATE 와 DELETE를 수행할때는
-- 2개 이상의 레코드에 영향이 미치는 명령은 매우 신중하게 실행해야 한다
-- 가장 좋은 방법은 변경, 삭제하고자 하는 데이터가 여러개 있더라도
-- 가급적 PK를 기준으로 1개씩 처리하는 것이 좋다
-- 또한 전체 데이터가 모두 변경, 삭제 되지 않도록 WHERE절을 함께 사용하는 것이 좋음
UPDATE tbl_guest_book
SET gb_time = '10:36:00'
WHERE gb_seq = 3;
SELECT * FROM tbl_guest_book;

DELETE FROM tbl_guest_book
WHERE gb_seq = 1;
SELECT * FROM tbl_guest_book;
ROLLBACK;

SELECT 30 * 40;

-- MYSQL 고유함수로 문자열을 연결할때 사용함
SELECT CONCAT('대한', '민국', '만세');


SELECT * FROM tbl_guest_book
WHERE gb_content LIKE '%내일%'; -- MYSQL에서는 이런코드를 사용할수 있지만 다른 DB에서는 사용하지 못하기때문에

-- CONCAT을 활용하여 이런식의 코드로 작성해야함
SELECT * FROM tbl_guest_book
WHERE gb_content LIKE CONCAT('%', '내일', '%');

-- Oracle의 DECODE() 와 유사한 형태의 조건연산
-- gb_seq의 값이 짝수이면 짝수로 표시 아니면 홀수로 표시
SELECT IF( MOD(gb_seq , 2) = 0, '짝수', '홀수')
FROM tbl_guest_book;

SELECT FLOOR(RAND() * 10);

SELECT IF(MOD(FLOOR(RAND() * 100) ,2) = 0, '짝수', '홀수');

SELECT * FROM tbl_guest_book;
SELECT C(*) FROM tbl_geuest_book;

SELECT * FROM tbl_guest_book
ORDER BY gb_date DESC, gb_time DESC;

SELECT * FROM tbl_guest_book
WHERE gb_content
LIKE '%국가%'
ORDER BY gb_date DESC, gb_time DESC;

CREATE VIEW view_방명록 AS (
	SELECT gb_seq AS '일련번호',
			gb_date AS '등록일자',
			gb_time AS '등록시간',
			gb_writer AS '등록자이름',
			gb_email AS '등록email',
			gb_password AS '비밀번호',
			gb_content AS '내용'
	FROM tbl_guest_book
);

SELECT * FROM view_방명록;