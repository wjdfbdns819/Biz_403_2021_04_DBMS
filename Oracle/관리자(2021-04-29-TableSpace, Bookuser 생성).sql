-- 여기는 관리자 접속

-- TableSpace 생성
CREATE TABLESPACE RentBookDB
DATAFILE 'C:/oraclexe/data/rentbook.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- 사용자 생성 (bookuser)
CREATE USER bookuser IDENTIFIED BY bookuser
DEFAULT TABLESPACE RentBookDB;

-- 사용자에게 DBA 권한 부여
GRANT DBA TO bookuser;