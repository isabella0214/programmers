-- 코드를 입력하세요
select price as max_price
from product
order by price desc
fetch first 1 row only