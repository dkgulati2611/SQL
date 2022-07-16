-- 1C
select distinct S1.sname
from sailors S1, reserves R1, boat B1,
reserves R2, boat B2
where S1.sid=R1.sid and R1.bid=B1.bid
and S1.sid=R2.sid and R2.bid=B2.bid
and B1.color="red" and B2.color="green";
