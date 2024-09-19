-- CITY & VILLAGE TABLE'S QUERIES...

Select V.NAME FROM CITY as C
JOIN VILLAGE AS V
ON C.CITYID = V.CITYID
WHERE C.NAME = 'RAJKOT';

SELECT C.NAME , V.NAME , PINCODE FROM CITY AS C
JOIN VILLAGE AS V
ON C.CITYID = V.CITYID

SELECT C.NAME , COUNT(C.CITYID) FROM CITY AS C
JOIN VILLAGE AS V
ON C.CITYID = V.CITYID
GROUP BY C.NAME
HAVING COUNT(C.CITYID) > 1

SELECT C.NAME FROM CITY AS C
LEFT JOIN VILLAGE AS V
ON C.CITYID = V.CITYID
WHERE V.CITYID IS NULL

SELECT C.NAME , COUNT(V.NAME) FROM CITY AS C
LEFT JOIN VILLAGE AS V
ON C.CITYID = V.CITYID
GROUP BY C.NAME

SELECT COUNT(*) FROM (SELECT C.NAME , COUNT(DISTINCT C.CITYID) AS CITY FROM CITY AS C
                        JOIN VILLAGE AS V
                        ON C.CITYID = V.CITYID
                        GROUP BY C.NAME
                        HAVING COUNT(C.CITYID) > 1) as COUNT_CITY;

-- STU_MASTER TABLE'S QUERIES...

CREATE TABLE STU_MASTER(
	RNO INT PRIMARY KEY,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50) DEFAULT 'GENERAL',
	SPI INT CHECK(SPI <= 10 AND SPI >= 0),
	BKLOG INT CHECK(BKLOG >= 0)
);

INSERT INTO STU_MASTER VALUES(101,'RAJU','CE',8.80,0);
INSERT INTO STU_MASTER VALUES(102,'AMIT','CE',2.20,3);
INSERT INTO STU_MASTER VALUES(103,'SANJAY','ME',1.50,6);
INSERT INTO STU_MASTER VALUES(104,'NEHA','EC',7.65,0);
INSERT INTO STU_MASTER VALUES(105,'MEERA','EE',5.52,2);
INSERT INTO STU_MASTER VALUES(106,'MAHESH',DEFAULT,4.50,3);

SELECT * FROM STU_MASTER;