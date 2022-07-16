-- 1G
select sname,TIMESTAMPDIFF(YEAR,date_of_birth,"2021-10-1") as age
from sailors where date_of_birth <=all(select date_of_birth from sailors);