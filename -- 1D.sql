-- 1D
select sid from sailors 
where sid not in (select sid from reserves 
where dt>="2018-01-01");