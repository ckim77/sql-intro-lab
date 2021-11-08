-- 1
update customer
set fax = null;

-- 2
update customer 
set company = 'self'
where company is null;

-- 3
update customer
set last_name = 'Thompson'
where first_name = 'Julia';

-- 4
update customer
set support_rep_id = 4 where email = 'luisrojas@yahoo.cl';

-- 5
select * from genre where name = 'Metal';
update track
set composer = 'The darkness around us'
where composer is null and genre_id = 3;

