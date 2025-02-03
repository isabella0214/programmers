SELECT 
    ANIMAL_TYPE, 
    NVL(NAME, 'No name') AS NAME,  -- 이름이 NULL인 경우 "No name"으로 표시
    SEX_UPON_INTAKE
FROM 
    ANIMAL_INS
ORDER BY 
    ANIMAL_ID;