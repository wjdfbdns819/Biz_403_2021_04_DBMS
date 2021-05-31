-- tbuser 접속
CREATE TABLE tbl_todolist (

    td_seq	NUMBER		PRIMARY KEY,
    td_doit	nVARCHAR2(125)	NOT NULL,	
    td_date	VARCHAR2(125)	NOT NULL,	
    td_time	VARCHAR2(125)	NOT NULL	
);

-- 1번부터 자동으로 시작
CREATE SEQUENCE seq_todolist
START WITH 1 INCREMENT BY 1;


INSERT INTO tbl_todolist(td_seq, td_doit, td_date, td_time)
VALUES(1, '내용', 1 ,1);


CREATE VIEW  view_전체리스트 AS (
    SELECT td_seq AS 번호,
        td_doit AS 할일,
        td_date AS 작성일자,
        td_time AS 작성시간
    from tbl_todolist
        
);

SELECT
    *
FROM view_전체리스트;
