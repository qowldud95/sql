-- 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 
-- 보호소에 들어올 당시에는 중성화1되지 않았지만,
--  보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는
--  아이디 순으로 조회하는 SQL 문을 작성해주세요.


SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
  FROM (SELECT ANIMAL_ID, ANIMAL_TYPE, NAME
          FROM ANIMAL_INS 
         WHERE SEX_UPON_INTAKE LIKE 'Intact %') A
LEFT OUTER JOIN ANIMAL_OUTS B ON B.ANIMAL_ID = A.ANIMAL_ID
WHERE B.SEX_UPON_OUTCOME LIKE '%Spayed %' 
 OR SEX_UPON_OUTCOME LIKE '%Neutered %'
 ORDER BY A.ANIMAL_ID