#날짜 2022.01.10
#이름 장현민
#내용 3.SQL 확인문제

#3-1
CREATE TABLE `Member`(
    `mID` VARCHAR(10) PRIMARY KEY,
    `mName`VARCHAR(10)NOT null,
    `mHP`VARCHAR(13) unique,
    `mAge`INT DEFAULT null,
    `mAddr`VARCHAR(20) DEFAULT null
    );
    
CREATE TABLE `Product`(
    `pCode` INT AUTO_INCREMENT PRIMARY key,
    `pName`VARCHAR(10)NOT null,
    `pPrice`INT NOT null,
    `pAmount`INT DEFAULT 0,
    `pCompany`VARCHAR(10)DEFAULT null,
    `pDate`DATE 
    );
    
    
#3-2
INSERT INTO `Member` VALUES ('A101','김유신','010-1234-1001', 25, '신라');
INSERT INTO `Member` VALUES ('A102','김춘추','010-1234-1002', 23, '신라');
INSERT INTO `Member` (`mID`,`mName`, `mAge`,`mAddr`)VALUES ('A103','장보고', 31,'통일신라');
INSERT INTO `Member` (`mID`,`mName`, `mAddr`)VALUES ('A104','강감찬','고려');
INSERT INTO `Member` (`mID`,`mName`,`mHP`, `mAge`)VALUES ('A105','이순신','010-1234-1005',50);


INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`,`pCompany`,`pDate`)VALUES ('냉장고',800,10,'LG','2022-01-06');
INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`,`pCompany`,`pDate`)VALUES ('노트북',1200,20,'삼성','2022-01-06');
INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`,`pCompany`,`pDate`)VALUES ('TV',1400,6,'LG','2022-01-06');
INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`,`pCompany`,`pDate`)VALUES ('세탁기',1000,8,'LG','2022-01-06');
INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`)VALUES ('컴퓨터',1100,0);
INSERT INTO `Product` (`pName`,`pPrice`,`pAmount`,`pCompany`,`pDate`)VALUES ('휴대폰',900,102,'삼성','2022-01-06');

#3-3
SELECT `mName` FROM `Member`;
SELECT `mName`,`mHP` FROM `Member`;
SELECT * FROM `Member` WHERE `mID`='A102';
SELECT * FROM `Member` WHERE `mID`='A104' OR `mID`='A105';
SELECT * FROM `Member` WHERE `mAddr`='신라';
SELECT * FROM `Member` WHERE `mAge` > 30;
SELECT * FROM `Member` WHERE `mHP`  IS NULL;
UPDATE `Member` SET `mAge`=42 WHERE `mID` = 'A104';
UPDATE `Member` SET `mAddr`='조선' WHERE `mID` = 'A105';
DELETE FROM `Member` WHERE `mID` = 'A103';
SELECT * FROM `Member`;

SELECT `pName` FROM `Product`;
SELECT `pName`,`pPrice` FROM `Product`;
SELECT *FROM `Product` WHERE `pCompany`='LG';
SELECT *FROM `Product` WHERE `pCompany`='삼성';
UPDATE `Product` SET `pCompany` = '삼성', `pDate` = '2021-01-01' WHERE `pCode` = 5;
SELECT *FROM `Product`;
