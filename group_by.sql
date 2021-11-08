-- 1
select sum(total) from invoice;

-- 2
select name, avg(milliseconds) from track
group by name
order by avg(milliseconds);

-- 3
select count(artist_id) from album
where artist_id in (8, 22) 
group by artist_id;
