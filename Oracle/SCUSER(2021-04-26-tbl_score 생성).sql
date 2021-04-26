-- scuer 접속 화면

-- Table 삭제
DROP TABLE tbl_score;

--Table 생성
CREATE TABLE tbl_score(
    -- 제약 조건
    sc_num CHAR(5) PRIMARY KEY NOT NULL,
    sc_kor NUMBER NOT NULL,
    sc_eng NUMBER NOT NULL,
    sc_math NUMBER NOT NULL
);
