/*
 *  데이터 조작 언어(DML:Data Manupulation Language)
 */


 /* 1. Select */
 USE world;
 SHOW TABLES; 
 # 현 데이터베이스에 있는 테이블 조회;
 DESC city;
# city 테이블의 구조 보기;

/*
SELECT 필드명 
    FROM 테이블명
    JOIN 테이블명
    ON 조인 조건
    WHERE 조건
    GROUP BY 필드명
    HAVING 그룹 조건
    ORDER BY 필드명 순서
    LIMIT 숫자 OFFSET 숫자;
 */

 SELECT NAME, Population FROM city;
 SELECT `name`, population FROM city;
 SELECT NOW();

 /*
    조회 조건
  */

SELECT * FROM city WHERE countrycode='KOR';
SELECT * FROM city WHERE countrycode='KOR' AND population > 1000000;
SELECT DISTINCT district FROM city WHERE countrycode='KOR'; #DISTINCT 고유한

# 수도권(서울, 인천, 경기) 도시
SELECT * FROM city WHERE district='Seoul' OR district='Inchen' OR district='Kyonggi';

SELECT * FROM city WHERE countrycode='KOR' AND Population>=1000000 AND Population % 2 = 1;
SELECT * FROM city WHERE countrycode='KOR' AND Population>=500000 AND Population<=1000000;
SELECT * FROM city WHERE countrycode='KOR' AND Population between 500000 and 1000000;

SELECT * FROM city WHERE countrycode='KOR' AND district LIKE 'chungchong%';

SELECT * FROM city WHERE population >=8000000 ORDER BY population desc;

SELECT * FROM city WHERE population >=1000000 AND countrycode = 'KOR' ORDER BY population desc;

SELECT * FROM city WHERE population >=500000 AND countrycode = 'KOR' ORDER BY district, population DESC;

# 갯수
SELECT * FROM city ORDER BY population DESC LIMIT 10;
SELECT * FROM city WHERE countrycode='KOR' ORDER BY population DESC LIMIT 5;

SELECT * FROM city WHERE countrycode='KOR' ORDER BY population DESC LIMIT 10 OFFSET 10;

/* 함수 */
SELECT district, SUM(population) FROM city WHERE countrycode='KOR';

SELECT COUNT(*) FROM city WHERE countrycode='KOR';

SELECT AVG(population) FROM city WHERE countrycode='KOR';

SELECT ROUND(AVG(population)) AS avgpopulation FROM city WHERE countrycode='KOR';

SELECT MAX(population), MIN(population) FROM city WHERE countrycode='KOR';

/* 그룹 */

SELECT district, SUM(population) FROM city WHERE countrycode='KOR' GROUP BY district ORDER BY SUM(Population) DESC;

SELECT GROUP_CONCAT(`name`) FROM city WHERE district='Kyonggi';

SELECT GROUP_CONCAT(district) FROM city WHERE countrycode='KOR';

SELECT countrycode, COUNT(*) FROM city GROUP BY countrycode order by COUNT(*) desc LIMIT 5;

/* 그룹의 조건 */
SELECT district, ROUND(AVG(population)) FROM city where countrycode = 'KOR' GROUP BY district HAVING COUNT(*) >= 5;
SELECT district, ROUND(AVG(population)) FROM city where countrycode = 'KOR' GROUP BY district HAVING COUNT(*) >= 5 ORDER BY AVG(population) DESC;

SELECT countrycode, ROUND(AVG(population)) FROM city GROUP BY countrycode HAVING COUNT(*) >= 100 ORDER BY AVG(population) DESC;

SELECT continent, sum(surfaceArea), ROUND(AVG(GNP)), COUNT(`name`) FROM country GROUP BY continent desc;

SELECT country.Name, COUNT(city.Name) FROM city
	JOIN country
	ON city.CountryCode = country.Code
	GROUP BY countrycode
	ORDER BY COUNT(city.Name) DESC LIMIT 10;

SELECT r.name AS country, l.name AS city, l.population FROM city AS l
	JOIN country AS r
	ON l.countrycode = r.code
	ORDER BY l.population DESC 
	LIMIT 10;

SELECT r.continent r.name AS `country`, l.name AS city, l.population 
	FROM city AS l
	JOIN country AS r
	ON l.countrycode = r.code
	WHERE r.continent = 'ASIA'
	ORDER BY l.population DESC 
	LIMIT 10;

SELECT `language`, countrycode FROM countrylanguage
	WHERE countrycode = 'KOR'
	AND IsOfficial = TRUE;
	

SELECT l.Name AS `Country`, r.`Language`
	FROM country AS l
	JOIN countrylanguage AS r
	ON l.Code=country.Code
	WHERE l.Continent = 'Asia'
	AND r.IsOfficial = TRUE;

    