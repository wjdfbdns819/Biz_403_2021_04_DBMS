-- 여기는 관리자 권한으로 접속

-- USER 삭제
DROP USER scUser CASCADE;

-- TableSpace 삭제
DROP TABLESPACE schoolDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

-- TableSpace 생성
CREATE TABLESPACE schoolDB
DATAFILE 'C:/oraclexe/data/school.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;


-- schema : table, index, view 등등 데이터의 전체적인 모음집
-- 객체들의 정보를 담는곳
-- 데이터들의 모음체
-- 표준 SQL : CREATE SCHEMA
-- Oracle에서는 schema 를 쓰는 대신  USER를 사용함

-- 사용자 생성
CREATE USER scUser IDENTIFIED BY scUser -- 유저를 생성해서
DEFAULT TABLESPACE schoolDB; -- schoolDB에 저장

-- 권한 부여, 실습을 위해서 DBA로 권한을 부여함
-- DBA 권한을 남발하면
--  DB 보안적인 측면에서 무결성을 해칠수있는 여지가 많아진다

-- DB와 관련된 보안용어
-- 보안침해 : '허가받지 않은 사용자가 접속하여 문제'를 일으키는 경우

-- 무결성 침해(파괴) : '허가받은 사용자가 권한을 남용하여 문제'를 일으키는 경우
--                  CUD(추가, 수정, 삭제)등을 잘못하여 데이터에 문제가 생기는 것

GRANT DBA To scUser;


