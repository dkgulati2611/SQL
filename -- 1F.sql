-- 1F
select sname from sailors s where not exists
 (select * from boat b where not exists 
(select * from reserves r where r.sid = s.sid and r.bid = b.bid));

