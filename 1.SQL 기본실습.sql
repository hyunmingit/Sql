#날짜 : 2022.01.10
#이름 장현민
#내용 1.sql 기본 실습
#실습 1-1
CREATE DATABASE `TestDB`;
DROP DATABASE `TestDB`






#실습 1-2
CREATE TABLE `User1`(
  `uid` VARCHAR(10),
  `name` VARCHAR(10),
  `hp` CHAR(13),
  `age` tinyint
  );

DROP TABLE `User1`

#실습 1-3
INSERT INTO `User1` VALUES ('a011', '김유신', '010-1234-5678', '25');
INSERT INTO `User1` VALUES ('a012', '김춘추', '010-2234-5678', '23');
INSERT INTO `User1` VALUES ('a013', '장보고', '010-3234-5678', '32');
INSERT INTO `User1` (`uid`, `name`, `age`)VALUES ('a014', '강감찬', '45');
INSERT INTO `User1` SET `uid`='a015', `name`='이순신', `hp`='010-1234-5555';


#실습 1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='a011';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age`>30;
SELECT `uid`,`name`,`age` FROM `User1`;

#실습 1-5
UPDATE `User1` SET `hp`='010-4234-5678' WHERE `uid`='a014';
UPDATE `User1` SET `age`=51 WHERE `uid`='a015';
UPDATE `User1` SET 
						`hp`='010-1234-1001',
						`age`=27 
					WHERE 
						`uid`='a011';
						
						
#실습 1-6
DELETE FROM `User1` WHERE `uid` ='a011';
DELETE FROM `User1` WHERE `uid` = 'a012' AND `age`=25;
DELETE FROM `User1` WHERE `age` >= 30;
						


