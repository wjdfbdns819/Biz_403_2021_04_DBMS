CREATE DATABASE mybook;

SHOW DATABASES;

CREATE TABLE tbl_books_V1 (
	/* 도서 정보 table */
	bk_isbn	CHAR(13) PRIMARY KEY,
	bk_title VARCHAR(125) NOT NULL,
	bk_ccode CHAR(5) NOT NULL,	
	bk_acode CHAR(5) NOT NULL,	
	bk_date	VARCHAR(10),	
	bk_price INT,		
	bk_pages INT		
);

CREATE TABLE tbl_company (
	/* 출판사 정보 table*/
	cp_code	CHAR(5)	 PRIMARY KEY,
	cp_title VARCHAR(125) NOT NULL,
	cp_ceo VARCHAR(20),		
	cp_tel VARCHAR(20),		
	cp_addr VARCHAR(125),		
	cp_genre VARCHAR(10)		
);

CREATE TABLE tbl_author (
	/* 저자 정보 table*/
	au_code CHAR(5) PRIMARY KEY,
	au_name	VARCHAR(50)	NOT NULL,	
	au_tel	VARCHAR(20),		
	au_addr	VARCHAR(125),		
	au_genre VARCHAR(30)		
);


