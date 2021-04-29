-- bookuser 화면

-- Table 생성
CREATE TABLE tbl_books (
    bk_isbn CHAR(13) PRIMARY KEY,
    bk_title NVARCHAR2(125) NOT NULL,
    bk_ccode CHAR(5) NOT NULL,
    bk_acode CHAR(5) NOT NULL,
    bk_date CHAR(10),
    bk_price NUMBER,
    bk_pages NUMBER
);

-- Table 삭제
DROP TABLE tbl_books;

-- 데이터 추가
INSERT INTO tbl_books(bk_isbn, bk_title, bk_ccode, bk_acode)
VALUES (9791162540770, '데스 바이 아마존', 1, 1);

-- 전체 데이터 조회
SELECT * FROM tbl_books;

-- company Table 생성
CREATE TABLE tbl_company (
        -- 제약조건
        cp_code CHAR(5) PRIMARY KEY,
        cp_title NVARCHAR2(125) NOT NULL,
        cp_ceo NVARCHAR2(20),
        cp_tel VARCHAR2(20),
        cp_addr NVARCHAR2(125),
        cp_genre NVARCHAR2(30)
);

-- company Table 삭제
DROP TABLE tbl_company;

-- 데이터 추가 
INSERT INTO tbl_company(cp_code, cp_title)
VALUES (1, 'oo출판사');

-- 전체 데이터 조회
SELECT * FROM tbl_company;

-- author Table 생성
CREATE TABLE tbl_author (
    -- 제약 조건
    au_code CHAR(5) PRIMARY KEY,
    au_name NVARCHAR2(50) NOT NULL,
    au_tel VARCHAR2(20),
    au_addr NVARCHAR2(125),
    au_genre NVARCHAR2(30)
);

-- author Table 삭제
DROP TABLE tbl_author;

-- 데이터 추가
INSERT INTO tbl_author(au_code, au_name)
VALUES (11111, 'ooo');

-- 전체 데이터 조회
SELECT * FROM tbl_author;


CREATE VIEW view_도서일람표 (
    SELECT bk_isbn ISBN,
        bk_title 도서명,
        bk_ccode 출판사코드,
        bk_accode 저자코드,
    




);