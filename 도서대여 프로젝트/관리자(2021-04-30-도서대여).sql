-- 관리자 화면

-- User 삭제
DROP USER bookuser CASCADE;

-- TableSpace 삭제
DROP TABLESPACE RentBookDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

-- TableSpace 다시 생성
CREATE TABLESPACE RentBookDB
DATAFILE 'C:/oraclexe/data/rentbook.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- user 생성
CREATE USER bookuser IDENTIFIED BY bookuser
DEFAULT TABLESPACE RentBookDB;

-- 권한 부여
GRANT DBA TO bookuser;

 
