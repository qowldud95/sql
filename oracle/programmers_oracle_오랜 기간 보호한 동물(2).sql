--입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.

SELECT ANIMAL_ID, NAME 
  FROM (SELECT A.ANIMAL_ID, A.NAME
          FROM ANIMAL_INS A
         LEFT OUTER JOIN ANIMAL_OUTS B ON B.ANIMAL_ID = A.ANIMAL_ID
         WHERE B.DATETIME IS NOT NULL
         ORDER BY (B.DATETIME - A.DATETIME) DESC )
WHERE ROWNUM <= 2