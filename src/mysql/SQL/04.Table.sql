##########################################################
#
#   데이터 정의 언어(DDL: Data Definition Language)
#
##########################################################


/*
 * 1. Table 생성
CREATE TABLE 테이블명 (
	필드명 데이터타입 [NOT NULL] [KEY] [DEFAULT 값] [Extra],
	필드명 데이터타입 [NOT NULL] [KEY] [DEFAULT 값] [Extra],
	...
) [Extra];
 *
 */

# 주소록 테이블 생성
CREATE TABLE if NOT EXISTS addrBook (
	num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(4) NOT NULL,
	tel VARCHAR(14) NOT NULL,
	birthday DATE
) AUTO_INCREMENT=101;

# 고객 테이블 생성
CREATE TABLE if NOT EXISTS customer (
	uid VARCHAR(10) PRIMARY KEY,
	pwd CHAR(44) NOT NULL,			# 암호화한 결과를 저장
	`name` VARCHAR(4) NOT NULL,
	email VARCHAR(20),
	regDate DATE DEFAULT (CURRENT_DATE),
	isDeleted INT DEFAULT 0
);

/*
 * 2. 테이블 조회
 */
# 데이터베이스 내의 테이블 목록
SHOW TABLES;

# 테이블 구조
DESC customer;

/*
 * 3. 테이블 삭제 (DROP)
 */
# test2 테이블 삭제
DROP TABLE test2;

# test 테이블 내용 삭제
TRUNCATE test;

/*
 * 4. 테이블 이름 변경 (RENAME)
 */
# koreanCity -> korCity 
RENAME TABLE koreanCity TO korCity;

/*
 * 5. 테이블 구조 변경 (ALTER)
 */

# customer 테이블에 tel 항목 추가
ALTER TABLE customer 
	ADD tel VARCHAR(14);

# customer 테이블에 tel 항목 삭제
ALTER TABLE customer 
	DROP tel;

# customer 테이블에 name 항목 다음에 tel 항목 추가
ALTER TABLE customer 
	ADD tel VARCHAR(14) AFTER `name`;

# customer 테이블의 tel 항목에 not null 추가
ALTER TABLE customer 
	CHANGE tel tel VARCHAR(14) NOT NULL;

/*
 * 6. View 생성
 */
# 인구 900만 이상인 도시로 largeCity 뷰 생성
CREATE VIEW largeCity
	AS SELECT * FROM city WHERE Population >= 9000000
	WITH CHECK OPTION;

# 서울의 인구를 8900000으로 변경하면 에러가 발생(Check option 위배)
UPDATE largeCity SET Population=8900000 WHERE ID=2331;

# city 테이블에서 변경하면 largeCity에도 반영이 됨
UPDATE city SET Population=9900000 WHERE ID=2331;

/*DB 과제
1. 좋아하는 프로야구 구단의 선수를 등록하려고 한다.
2. 등록하려는 정보는
선수명, 백넘버, 포지션, 생년월일, 키(height)
3. primary key는 백넘버로 한다.
4. 각 포지션(투수, 포수, 내야수, 외야수) 별로 3명 이상의
선수를 등록한다.


선수 목록, 선수 등록, 선수정보 수정, 선수 방출을 할 수 있도록
DTO, DAO, App을 만들어 보세요. */

CREATE TABLE if NOT EXISTS baseball (
	`name` VARCHAR(8) NOT NULL,
	backnumber int PRIMARY KEY,
	`position` VARCHAR(4) NOT NULL,
	birthday DATE,
	height INT,
	isDeleted int DEFAULT 0
);
SELECT * FROM baseball;

INSERT INTO baseball (`name`, backnumber, `POSITION`, birthday, height, isDeleted) 
	VALUES ('강매성', '95','투수','2003-06-08','187', 0),
	('고효준','65', '투수','1983-02-08','179', 0),
	('김건우','59','투수','2002-07-12','185', 0),
	('김민식', '21','포수','1989-06-28','180', 0),
	('김태우','100', '포수','1995-02-20','175', 0),
	('박제범','40','포수','2001-03-12','172', 0),
	('고영준', '6','내야수','2002-07-08','185', 0),
	('김성현','16', '내야수','1987-03-09','172', 0),
	('김성민','116','내야수','2001-04-30','184', 0),
	('김규남','28','외야수','1995-05-12','183', 0),
	('김민재','49','외야수','1996-04-04','191', 0),
	('라가레스','27','외야수','1989-03-17','187', 0);
SELECT * FROM baseball;