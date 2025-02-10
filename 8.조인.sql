-- INNER JOIN(내부조인)
SELECT * FROM INFO;

SELECT * FROM INFO INNER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID; -- 붙을수 없는 데이터는 안나옴

--컬럼지정 - AUTH_ID는 양쪽 다 있기 때문에, 출력할때, 테이블명,컬럼명 으로 지정 해야합니다.
SELECT ID,
        TITLE,
        CONTENT,
        AUTH.AUTH_ID,
        NAME,
        JOB
FROM INFO  
INNER JOIN AUTH
ON INFO.AUTH_ID = AUTH.AUTH_ID;
--테이블ALIAS
SELECT I.ID,
           I.AUTH_ID,
           A.NAME
FROM INFO I
INNER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID;
--USING절 - 양쪽 테이블에 동일 키 이름으로 연결할때 사용이 가능합니다
SELECT *
FROM INFO
INNER JOIN AUTH A
USING (AUTH_ID);
-----------------------------------------------------------------------------------------
--LEFT OUTER JOIN - 왼쪽 테이블이 기준이 되고, 왼쪽테이블은 다나옴
SELECT *
FROM INFO I
LEFT OUTER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID;
-- RIGHT OUTER JOIN -오른쪽 테이블이 기준이 되고, 오른쪽 테이블은 다나옴
SELECT * 
FROM INFO I
RIGHT OUTER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID;
--FULL OUTER JOIN - 양쪽테이블이 누락 없이 다 나옴
SELECT *
FROM INFO I
FULL OUTER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID;

--번외 CROSS조인 - 잘못된 조인의 형태 (오라클에서 ''카디시안 프로덕트" 라고 부릅니다)
SELECT *
FROM INFO I
CROSS JOIN AUTH A;
------------------------------------------------------------------------
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

SELECT *
FROM EMPLOYEES E
LEFT JOIN DEPARTMENT_ID D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--조인이 3개이상도 될까요? -> ㅇㅇ됨
SELECT *
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
LEFT JOIN LOCATIONS L
ON D.LOCATION_ID = L.LOCATION_ID;