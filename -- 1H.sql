-- 1H
select rating,min(TIMESTAMPDIFF(YEAR,date_of_birth,"2020-09-17")) as
minage from sailors group by rating having count(*)>1;