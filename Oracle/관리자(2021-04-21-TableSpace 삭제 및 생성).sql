-- 관리자 권한 접속

-- table space 삭제하기
-- 반드시 옵션을 같이 작성하자
DROP TABLESPACE mydb -- 반드시
INCLUDING CONTENTS AND DATAFILES -- 옵션
CASCADE CONSTRAINTS; -- 옵션

--table space 생성하기
CREATE TABLESPACE mydb 
DATAFILE 'C:/oraclexe/data/mydb.dbf' 
SIZE 10M AUTOEXTEND ON NEXT 10K;

DROP TABLESPACE schooldb
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

CREATE TABLESPACE schooldb
DATAFILE 'C:/oraclexe/data/schooldb.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- 새로운 사용자 등록
CREATE USER iouser IDENTIFIED BY iouser
DEFAULT TABLESPACE iolistdb;

--사용자에게 권한 부여
GRANT DBA TO iouser;

DROP USER iouser CASCADE;


