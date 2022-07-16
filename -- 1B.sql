-- 1B
select sname from sailors 
where sid in (select r.sid from boat b, reserves r
where r.bid = b.bid AND b.color = "red" 
and 
(select extract(month from r.dt)="03")
union
select r2.sid from boat b2, reserves r2 
where r2.bid = b2.bid AND b2.color = "green" 
and
(select extract(month from r2.dt)="03")
);