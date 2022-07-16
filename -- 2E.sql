-- 2E
select inv_date,sum(unit_sold) as total_dsales
from invoice
group by inv_date;