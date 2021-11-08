-- 1
CREATE TABLE animals (
	id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  type VARCHAR(20),
  age INTEGER
);

-- 2

INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- 3
select * from animals;

-- 4
delete from animals where type = 'lion';

-- 5
delete from animals where name like 'M%';

-- 6
delete from animals where age < 9;
