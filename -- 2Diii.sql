-- 2Diii
select concat(c.cust_fname,c.cust_lname) as name,
i.inv_amount from customer as c 
left join invoice i
on c.cust_num = i.cust_num
union
select concat(c.cust_fname,c.cust_lname) as name,
i.inv_amount from customer as c 
right join invoice i
on c.cust_num = i.cust_num;