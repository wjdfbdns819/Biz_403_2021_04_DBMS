-- bookuser로 접속

-- books Table 생성
CREATE TABLE tbl_books (
    bk_isbn	CHAR(13)		PRIMARY KEY,
    bk_title	NVARCHAR2(125)	NOT NULL,	
    bk_ccode	CHAR(5)	NOT NULL,	
    bk_acode	CHAR(5)	NOT NULL,	
    bk_date	VARCHAR2(10),		
    bk_pages	NUMBER,		
    bk_price	NUMBER		
);

DROP TABLE tbl_books;

-- compay Table 생성
CREATE TABLE tbl_compay (
    cp_code	CHAR(5)		PRIMARY KEY,
    cp_title	NVARCHAR2(125)	NOT NULL,	
    cp_ceo	NVARCHAR2(20),		
    cp_tel	VARCHAR2(20),		
    cp_addr	NVARCHAR2(125),		
    cp_genre	NVARCHAR2(10)		
);

-- author Table 생성
CREATE TABLE tbl_author (
    au_code	CHAR(5)		PRIMARY KEY,
    au_name	NVARCHAR2(50)	NOT NULL,	
    au_tel	VARCHAR2(20),		
    au_addr	NVARCHAR2(125),		
    au_genre	NVARCHAR2(30)		
);


-- 확인
SELECT COUNT(*) FROM tbl_books;

SELECT COUNT(*) FROM tbl_compay;

SELECT COUNT(*) FROM tbl_author;

DROP VIEW view_도서정보;
-- 3개의 table을 JOIN
CREATE VIEW view_도서정보 AS
(
    SELECT B.bk_isbn AS ISBN,
            B.bk_title AS 도서명,
            C.cp_title AS 출판사명,
            C.cp_ceo AS 출판사대표,
            A.au_name AS 저자명,
            A.au_tel AS 저자연락처,
            B.bk_date AS 출판일,
            B.bk_price AS 가격,
            B.bk_pages AS 페이지
    FROM tbl_books B
        LEFT JOIN tbl_compay C
            ON B.bk_ccode = C.cp_code
        LEFT JOIN tbl_author A
            ON B.bk_acode = A.au_code
);

-- 단독 Table로 생성된 VIEW는 INSERT, UPDATE, DELETE를
--  실행할 수 있다
-- Table JOIN한 결과로 생성된 VIEW는 읽기전용이며,
--  INSERT, UPDATE, DELETE를 실행할 수 없다

SELECT * FROM view_도서정보;
DELETE FROM VIEW_도서정보;
COMMIT;
