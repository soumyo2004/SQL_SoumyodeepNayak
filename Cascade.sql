use practise;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values (101, 'electronics', 'it stores all set of electronics items');
select * from category;
desc category;

CREATE TABLE Products (
    P_ID int primary key,
    p_Name varchar(250) NOT NULL,
    c_id int ,
    CONSTRAINT c_id FOREIGN KEY (c_id)
    REFERENCES category(c_id) on delete cascade
);

insert into products values (904, 'INTEL I5 Processor', 101);
select * from products;

delete from category where c_id=101;
select * from category;

select * from worker;

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;

(SELECT * FROM Worker ORDER BY worker_ID DESC LIMIT 5)
ORDER BY worker_ID ASC;

desc worker;

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);


INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) 
VALUES
 (1, 'Manager', '2016-02-20 00:00:00'),
 (2, 'Executive', '2016-06-11 00:00:00'),
 (8, 'Executive', '2016-06-11 00:00:00'),
 (5, 'Manager', '2016-06-11 00:00:00'),
 (4, 'Asst. Manager', '2016-06-11 00:00:00'),
 (7, 'Executive', '2016-06-11 00:00:00'),
 (6, 'Lead', '2016-06-11 00:00:00'),
 (3, 'Lead', '2016-06-11 00:00:00');


