-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
-- 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 시간대 순으로 정렬해야 합니다.

SELECT A.HOUR, COUNT(B.DATETIME) AS "COUNT"
  FROM (SELECT LEVEL-1 HOUR
          FROM DUAL
        CONNECT BY LEVEL <= 24) A
LEFT join ANIMAL_OUTS B ON A.HOUR = TO_CHAR(B.DATETIME,'HH24')
GROUP BY A.HOUR
ORDER BY A.HOUR