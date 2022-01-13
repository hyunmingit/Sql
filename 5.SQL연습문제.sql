#날짜 2022.01.13
#이름 장현민
#내용 5.SQL 연습문제

#문제 01 그림과 같이 Book 테이블을 생성 후 데이터를 삽입 하십시오.

CREATE TABLE `Book` (
	`bookid` INT PRIMARY KEY Auto_increment,
	`bookname` VARCHAR(30),
	`publisher` VARCHAR(30),
	`price` INT);
	
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 역사', '굿스포츠', 7000);
	
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('피겨 교본', '굿스포츠', 8000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('Olympic Champions', 'pearson', 13000);
	

#문제 02 그림과 같이 Customer 테이블 생성 후 데이터를 삽입하세요

CREATE TABLE `Customer`(
				`custid` INT AUTO_INCREMENT PRIMARY KEY,
				`name` VARCHAR(4),
				`address` VARCHAR(30),
				`phone` CHAR(13));
				
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 맨체스타', '000-5000-0001');
	
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 ', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address` ) VALUES ('박세리', '대한민국 대전' );			
				
#문제 03 그림과 같이 Order 테이블 생성 후 데이터를 삽입 하세요. 
CREATE TABLE `Orders` (
	`orderid` INT PRIMARY KEY Auto_increment,
	`custid` int,
	`bookid` int,
	`saleprice` INT,
	`orderdate` DATE);
	
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 1, 6000, '2014-07-01');

INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 6, 6000, '2014-07-04');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 7, 20000, '2014-07-05');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 2, 12000, '2014-07-07');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 8, 13000, '2014-07-07');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 10, 12000, '2014-07-08');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 10, 7000, '2014-07-09');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 8, 13000, '2014-07-10');




#문제 04 모든 회원의 회원번호, 이름 , 주소를 조회하시오.
SELECT `custid`, `name`, `address` FROM `Customer`  ;

#문제 05 모든 도서의 이름과 가격을 검색하시오.
SELECT `bookname`, `price` FROM `Book`;

#문제 06 모든 도서의 가격과 이름을 검색하시오.
SELECT `price`, `bookname` FROM `Book`;

#문제 07 모든 도서의 도서번호, 도서이름, 출판사, 가격을 조회하시오.
SELECT * FROM `Book`;

#문제 08
SELECT `publisher` FROM `Book`;

#문제 09 도서 테이블에 있는 모든 출판사를 중복없이 조회하시오.
SELECT `publisher` FROM `Book` GROUP BY `publisher`;
#select distinct `publisher` from `Book`; -중복제거

#문제 10 20000원 이상인 도서를 조회.
SELECT * FROM `Book` WHERE `price` >= 20000;

#문제 11 가격이 20000 미만인 도서를 조회
SELECT * FROM `Book` WHERE `price` < 20000;

#문제 12 10000<= 가격 <=20000 인 도서 조회
SELECT * FROM `Book` WHERE 10000 <=`price` AND `price` <= 20000;
#											between 10000 and 20000;
#문제 13 가격이 15000 이상 30000이하인 도서의 도서번호, 도서명, 도서가격
SELECT `bookid`, `bookname`, `price` FROM `Book` where 15000 <= `price` AND `price` <=30000;

#문제 14 도서 번호가 2, 3, 5 인 도서 조회
SELECT * FROM `Book` WHERE `bookid` =2 OR `bookid` =3 OR `bookid` =5;

#문제 15 도서번호가 짝수인 도서 조회
SELECT * FROM `Book` WHERE `bookid` % 2 =0;

####문제 16 박씨 조회.
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

####문제 17 대한민국 거주 고객
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';

####문제 18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL ;

#문제 19
SELECT * FROM `Book` WHERE `publisher` = '굿스포츠' OR `publisher` ='대한미디어';

#문제 20 축구의 역사르 ㄹ출간한 출판사 조회.
SELECT `publisher` FROM `Book` WHERE `bookname` = '축구의 역사';

####문제 21 도서 이름에 축구가 포함된 출판사
SELECT `publisher` FROM `Book` WHERE `bookname` LIKE '축구%';

####문제 22 도서이름의 왼쪽 두번째 위치에 '구'라는 문자열 도서
SELECT * FROM `Book` WHERE `bookname` LIKE '_구%';

####문제 23
SELECT * FROM `Book` WHERE `price` >= 20000 AND `bookname` LIKE '축구%';

#문제 24 도서를 이름순으로 조회
SELECT * FROM `Book` ORDER BY `bookname`;

#문제 25 도서를 가격순을 조회하고 가격이 같으면 이름순으로 조회
SELECT * FROM `Book` ORDER BY `price`, `bookname`;

#문제 26 가격 내림차순으로 조회하고 같으면 출판사 오름차순으로 조회
SELECT * FROM `Book` ORDER BY `price` desc , `publisher` ASC;

#문제 27 도서가격이 큰 1, 2, 3 위도시 조회
SELECT * FROM `Book` ORDER BY `price` desc LIMIT 3;

#문제 28 도서가격이 작은  1, 2, 3 위도서 조회
SELECT * FROM `Book` ORDER BY `price` LIMIT 3;

####문제 29도서를 주문하지 않은 고객 이름 조회
SELECT `name` FROM `Customer`
 WHERE NOT EXISTS 
 ( SELECT * FROM `Orders` WHERE 
 Customer.custid = Orders.custid);
 
 #select `name` from `Customer`
 # where `name` not in 
 #(select `name`  from `Customer` 
 #where `custid` in(select` from `Orders`));
  
 
#문제 30 고객이 주문한 도서의 총 판매액을 구하시오.
SELECT SUM(saleprice) AS '총판매액' FROM `Orders`;

#문제 31 2번 김연아가 주문한 도서의 총 판매액
SELECT SUM(saleprice) AS '총매출' FROM `Orders` WHERE `custid` =2;

#문제 32 고객이 주문한 도서의 총 판매액 평균 최저 최저가를 구하시오.
SELECT SUM(saleprice) AS '총판매액', 
		 avg(saleprice) AS '평균값', 
		 min(saleprice) AS '최저가',
		 max(saleprice) AS '최고가' 
		 FROM `Orders`;
		 
####문제 33 도서 판매건수를 구하시오
SELECT COUNT(*) AS '판매건수' FROM `Orders`;

####문제 34 야구가 포함된 도서명을 농구로 변경
UPDATE `Book` SET `bookname` = REPLACE(`bookname`,'야구','농구')
WHERE `bookname` LIKE '%야구%';
SELECT * FROM `Book`;
#select `bookid`, replace(`bookname`, '야구', '농구')
# as `bookname`, `publisher`, `price` from `Book`;

####문제 35 8000원 이상인 도서를 구매한 고객에 대해 고객별 주문도서 수량.
#단, 두권 이상 구매한 고객만.
SELECT `custid`,COUNT(*)  AS  '수량' FROM `Orders`
 WHERE `saleprice` >= 8000  
GROUP BY `custid`
HAVING '수량' >= 2; 

#문제 36
SELECT * FROM `Customer` AS a JOIN `Orders` AS b ON a.custid = b.custid;
SELECT * FROM `Customer` JOIN `Orders` USING(`custid`);
SELECT * FROM `Customer`, `Orders` WHERE `Customer`.custid  = `Orders`.custid;

#문제 37
SELECT * FROM `Customer` AS a
	JOIN `Orders` AS b ON a.custid = b.custid
			ORDER BY a.`custid`;

#문제 38 고객의 이름과 고객이 주문한 도서의 판매가격
SELECT `name`, `saleprice` FROM `Customer` AS a
	JOIN `Orders` AS b ON a.custid = b.custid;
	
#문제 39 고객별로 주문한 모든 도서의 총 판매액을 구하고 고객별로 정렬
SELECT `name`, SUM(saleprice) AS '총판매액' FROM `Customer` AS a
	JOIN `Orders` AS b ON a.custid = b.custid
		GROUP BY a.custid
		ORDER BY `name`;

#문제 40 고객의 이름과 주문한 도서의 이름을 조회하시오
SELECT `name`,`bookname`  FROM `Customer` AS a
	JOIN `Orders` AS b ON a.custid = b.custid
	JOIN `Book` AS c ON b.bookid = c.bookid
		;

#문제 41 20000원인 도서를 주문한 고객의 이름과 도서이름을 조회
SELECT `name`,`bookname`  FROM `Customer` AS a
	JOIN `Orders` AS b ON a.custid = b.custid
	JOIN `Book` AS c ON b.bookid = c.bookid
	WHERE `saleprice` = 20000	;
#문제 42 모든 고객의 이름과 주문한 도서의 판매가격을 조회
SELECT `name`,`saleprice`  FROM `Customer` AS a
left outer	JOIN `Orders` AS b ON a.custid = b.custid
LEFT outer	JOIN `Book` AS c ON b.bookid = c.bookid
		;
#문제 43 가장 비싼 도서의 이름
SELECT `bookname`  FROM `Book` 
WHERE `price` = (select MAX(price) FROM `Book`);
#문제 44 책 '스포츠 의학' 한솔의학서적 출판사의 책을 삽입
INSERT INTO `Book` (`bookname`, `publisher`) VALUES
('스포츠 의학', '한솔의학서적');
#문제 45 고객번호가 5인 고객의 주소를 대한민국 부산으로 수정
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;
#문제 46 고객 번호가 5인 고객 삭제
DELETE FROM `Customer` WHERE `custid` = 5;