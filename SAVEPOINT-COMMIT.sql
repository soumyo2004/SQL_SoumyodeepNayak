show databases;

create database practise;

use practise;

show tables;

CREATE TABLE Mech (
    s_id INT, 
    s_name VARCHAR(25)
);

START TRANSACTION;

    INSERT INTO Mech VALUES (101, 'Jayanth');
    SAVEPOINT A;
    
    UPDATE Mech SET s_id = 102 WHERE s_id = 101;
    SAVEPOINT B;
    
    INSERT INTO Mech VALUES (103, 'Karthick');
    SAVEPOINT C;
    
    SELECT * FROM Mech;
    
    ROLLBACK TO SAVEPOINT B;
    
    SELECT * FROM Mech;
    
COMMIT;

SET SQL_SAFE_UPDATES = 1;



    