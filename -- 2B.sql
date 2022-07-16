create trigger upd_custs
before insert on invoice
for each row
update customer c
set c.cust_balance = c.cust_balance+new.inv_amount
where c.cust_num = new.cust_num;

insert into invoice 
values(1,1,1,'2021-10-01',4,60000),
(2,1,2,'2021-10-02',2,2500),
(3,4,3,'2021-10-01',1,62000),
(4,3,4,'2021-10-03',3,22000),
(5,1,5,'2021-10-05',1,55000);
