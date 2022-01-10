#날짜 2022.01.10
#이름 장현민
#내용 2.테이블 설정하기

#실습 2-1 Primary Key
CREATE TABLE `User2` (
   `uid`  VARCHAR(10) PRIMARY KEY ,
	`name` VARCHAR(10),
	`hp`   CHAR(10),
	`age`  INT 
);

INSERT INTO `User3` VALUES ('A106', '김유신', '010-1234-6666', 25);
INSERT INTO `User3` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User3` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User3` (`uid`, `name`, `hp`, `age`) VALUES ('A104', '강감찬', '010-1234-4444', 45);
INSERT INTO `User3` SET `uid` ='A105', `name` = '이순신', `hp` = '010-1234-5555', `age` = 51;

DELETE FROM `User2` WHERE `uid` = 'A104'


#실습 2-2
CREATE TABLE `User3` (
   `uid`  VARCHAR(10) PRIMARY KEY ,
	`name` VARCHAR(10),
	`hp`   CHAR(10)UNIQUE ,
	`age`  INT 
);

DROP TABLE `User4`;

#실습 2-3 
CREATE TABLE `User5` (
   `seq`   INT AUTO_INCREMENT PRIMARY KEY,
   `name`  VARCHAR(10) NOT null ,
	`gender`TINYINT(10),
	`age`   INT DEFAULT 1,
	`addr`  VARCHAR(225) 
);

INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES ('김유신', 1, 25, '김해시'); 
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES ('김춘추', 1, 23, '경주시'); 
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES ('장보고', 1, 35, '완도시'); 
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES ('강감찬', 1, 42, '서울시'); 
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES ('신사임당', 2, 47, '강릉시'); 
INSERT INTO `User5` (`gender`, `addr`)values( 1, '부산시'); 

#실습 2-4
#실습 2-5
CREATE TABLE `User6` LIKE `User5`;
#실습 2-6
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`)
		SELECT `name`, `gender`, `age`, `addr`  FROM `User5`;
#실습 2-7
