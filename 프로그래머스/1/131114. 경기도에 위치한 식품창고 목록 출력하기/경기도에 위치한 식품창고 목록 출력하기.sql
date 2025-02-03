SELECT 
    WAREHOUSE_ID, 
    WAREHOUSE_NAME, 
    ADDRESS, 
    CASE 
        WHEN FREEZER_YN IS NULL THEN 'N'  -- 냉동시설 여부가 NULL이면 'N'으로 출력
        ELSE FREEZER_YN  -- NULL이 아니면 원래 값을 그대로 출력
    END AS FREEZER_YN
FROM 
    FOOD_WAREHOUSE
WHERE 
    UPPER(ADDRESS) LIKE '%경기%'  -- 주소에 '경기'가 포함된 창고