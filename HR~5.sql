--집합연산자
--UNION - 합집합(중복X)
--UNION ALL - 합집합(중복O)
--INTERSECT - 교집합
--MINUS - 차집합

--컬럼개수가 일치해야 집합연산자 사용이 가능합니다
SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '04%'
UNION
SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE DEPARTMENT_ID = 20 

SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '04%'
UNION ALL
SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE DEPARTMENT_ID = 20 

SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '04%'
INTERSECT
SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE DEPARTMENT_ID = 20 

SELECT FIRST_NANE, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '04%'
MINUS
SELECT FIRST_NANE, HIRE_DATE FROM EMPLOYEES WHERE DEPARTMENT_ID = 20 
---------

SELECT 'PARK', 200 FROM DUAL;
UNION ALL
SELECT 'KIM', 300 FROM DUAL;
UNION ALL
SELECT 

