SELECT A.TITLE
     , A.BOARD_ID
     , B.REPLY_ID
     , B.WRITER_ID
     , B.CONTENTS
     , to_char(B.CREATED_DATE, 'yyyy-mm-dd') created_date 
from USED_GOODS_BOARD A, USED_GOODS_REPLY B
where A.BOARD_ID = B.BOARD_ID
and A.CREATED_DATE
between to_date('2022-10-01', 'yyyy-mm-dd') and to_date('2022-10-31', 'yyyy-mm-dd')
order by B.CREATED_DATE asc, A.TITLE asc;