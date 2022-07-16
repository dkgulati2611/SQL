-- 2C
select cust_num, concat(cust_fname," ",cust_lname) as name 
from customer where cust_num in(select cust_num from invoice 
group by cust_num,inv_date,prod_num 
having sum(unit_sold)>3);