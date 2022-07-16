-- 1E
select sname from sailors 
where rating > all (select rating from sailors 
where sname="mno");