-- 여기는 관리자 접속
-- KschoolDB, Kschool.dbf

-- TableSpace 생성 (KschoolDB)
CREATE TABLESPACE KschoolDB
DATAFILE 'C:/oraclexe/data/kschool.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- kscuser, kscuser, KSchoolDB
-- 사용자 생성(kscuser)
CREATE USER kscuser IDENTIFIED BY kscuser
DEFAULT TABLESPACE kschoolDB;

-- 권한 부여
GRANT DBA TO kscuser;