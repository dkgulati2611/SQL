create table GOLD_MASTER(
cust_num int,
cust_lname varchar(50),
cust_fname varchar(50),
 primary key(cust_num)
);
desc GOLD_MASTER;
create trigger in_gold
after update on customer
for each row
insert into gold_master
(select cust_num,cust_lname,cust_fname
from customer
where cust_num=new.cust_num
and cust_balance>100000
and cust_num not in (select cust_num from gold_master));

