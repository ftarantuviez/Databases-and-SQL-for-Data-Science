DROP TABLE INSTRUCTOR;

CREATE TABLE INSTRUCTOR
(
ins_id INT NOT NULL,
last_name VARCHAR(15) NOT NULL,
first_name VARCHAR(15) NOT NULL,
city VARCHAR(20),
country CHAR(2),
PRIMARY KEY (ins_id)
);

INSERT INTO INSTRUCTOR
	(ins_id, last_name, first_name, city, country)
	VALUES (1, 'Ahuija', 'Rav', 'Toronto', 'CA');
	
INSERT INTO INSTRUCTOR
	(ins_id, last_name, first_name, city, country)
	VALUES (2, 'Jose', 'Ravino', 'Mendoza', 'AR') ,
					(3, 'Esteban', 'Miramar', 'BSAS', 'CL');

SELECT * FROM INSTRUCTOR;

UPDATE INSTRUCTOR
	SET  first_name = "Mairano"
	WHERE ins_id = 3;

DELETE FROM INSTRUCTOR WHERE ins_id = 2;

SELECT last_name, last_name FROM INSTRUCTOR  
	WHERE city = "Toronto";
	