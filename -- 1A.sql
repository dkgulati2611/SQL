-- 1A
SELECT sname FROM SAILORS
WHERE sid in (SELECT SID FROM RESERVES);