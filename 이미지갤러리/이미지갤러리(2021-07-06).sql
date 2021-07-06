USE mylibs;

CREATE TABLE tbl_gallery (

	g_seq	BIGINT auto_increment primary key,
	g_wirter	VARCHAR(20)	NOT NULL,	
	g_date	VARCHAR(10)	NOT NULL,	
	g_time	VARCHAR(10)	NOT NULL,	
	g_subject	VARCHAR(50)	NOT NULL,	
	g_content	VARCHAR(1000)	NOT NULL,	
	g_image	VARCHAR(125)		
	
);

DROP table tbl_gallery;

show tables;

		 	CREATE TABLE IF NOT EXISTS tbl_gallery (
		
			g_seq	BIGINT auto_increment primary key,
			g_wirter	VARCHAR(20)	NOT NULL,	
			g_date	VARCHAR(10)	NOT NULL,	
			g_time	VARCHAR(10)	NOT NULL,	
			g_subject	VARCHAR(50)	NOT NULL,	
			g_content	VARCHAR(1000)	NOT NULL,	
			g_image	VARCHAR(125)		
			
		);
        
        
CREATE TABLE tbl_files (

	file_seq	BIGINT	AUTO_INCREMENT	PRIMARY KEY,
	file_gseq	BIGINT	NOT NULL,	
	file_original	VARCHAR(125)	NOT NULL,	
	file_upname	VARCHAR(125)	NOT NULL	

);

DROP TABLE tbl_files;

show tables;

SELECT * FROM tbl_gallery;

INSERT INTO tbl_gallery
(g_wirter, g_date, g_time, g_subject, g_content)
VALUES
('callor', '2021-07-06', '15:18:00', '연습', '진짜연습');

-- 현재 연결된 SESSION에서 INSERT가 수행되고,
-- 그 과정에서 AUTO_INCREMENT 칼럼이 변화가 있으면
-- 그 값을 알려주는 함수
SELECT LAST_INSERT_ID()