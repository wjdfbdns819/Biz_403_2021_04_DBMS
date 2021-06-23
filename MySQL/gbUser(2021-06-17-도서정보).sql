USE mybook;


CREATE TABLE tbl_member(
	username  VARCHAR(20) PRIMARY KEY, /*ID*/
    password  BIGINT NOT NULL, /*비밀번호*/
    name VARCHAR(20) NOT NULL, /*이름*/
    nname VARCHAR(20) NOT NULL,/*닉네임*/
    email VARCHAR(50) NOT NULL,/*이메일*/
    tel VARCHAR(20) NOT NULL,/*연락처*/
    addr NVARCHAR(125) NOT NULL/*주소*/

	
);

DROP TABLE tbl_member;

SELECT * FROM tbl_member;