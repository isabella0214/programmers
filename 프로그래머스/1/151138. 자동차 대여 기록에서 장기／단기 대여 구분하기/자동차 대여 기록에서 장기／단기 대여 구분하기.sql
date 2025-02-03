-- 코드를 입력하세요
SELECT 
    history_id,
    car_id,
    to_char(start_date, 'yyyy-mm-dd') AS start_date,
    to_char(end_date, 'yyyy-mm-dd') AS end_date,
    CASE 
        WHEN (end_date - start_date) +1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END AS rental_type -- 대여 기간에 따른 타입
FROM 
    car_rental_company_rental_history
WHERE 
    start_date BETWEEN to_date('2022-09-01', 'yyyy-mm-dd') AND to_date('2022-09-30', 'yyyy-mm-dd')
ORDER BY 
    history_id DESC;