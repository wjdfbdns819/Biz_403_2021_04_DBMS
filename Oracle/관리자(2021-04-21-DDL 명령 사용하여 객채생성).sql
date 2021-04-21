-- 관리자

--tablespace 생성
CREATE TABLESPACE iolistDB
DATAFILE 'C:/oraclexe/data/iolist.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- 사용자 생성
CREATE USER iouser IDENTIFIED BY iouser
DEFAULT TABLESPACE iolistDB;

-- 권한 부여
GRANT DBA TO iouser;

-- user 삭제
DROP USER iouser CASCADE;

-- tablespace 삭제
DROP TABLESPACE iolistDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;



