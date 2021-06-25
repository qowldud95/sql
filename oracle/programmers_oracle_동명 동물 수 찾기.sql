--동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요. 
--이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.

-- 간단히 중복된 데이터를 찾는 방법은 
-- 중복된 데이터를 찾고자 하는 컬럼으로 GROUP BY 한 후에 HAVING 절로 COUNT 가 1 이상인 것을 
-- SELECT 하면 됩니다.
SELECT NAME, COUNT(NAME)
  FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME) > 1 
ORDER BY NAME