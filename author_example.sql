/* CREATE EXAMPLE */
CREATE TABLE author
(
  author_id VARCHAR(9) NOT NULL,
  first_name CHAR(10) NOT NULL,
  last_name CHAR(15) NOT NULL, 
  country CHAR(15),
  city VARCHAR(15),
  email VARCHAR(20),
  number_of_books INT
)

CREATE TABLE test
(
  id INT,
  name_test VARCHAR(60)
)

/* DROP EXAMPLE */
DROP TABLE country;
CREATE TABLE country
(
  id INT,
  ccode CHAR(2),
  name_country VARCHAR,
  PRIMARY KEY(id)
)

/* SELECT EXAMPLE */
SELECT * FROM country WHERE name_country <> "Argentina"

/* 
  COUNT - SELECT EXAMPLE 

  This will return the quanity of rows where the author first_name is equal to Stephen Kin
*/
SELECT COUNT(first_name) FROM author WHERE first_name == "Stephen King"

/* 
  DISTINCT - SELECT EXAMPLE

  This return a list of the unique countries which have an author who has wrote more than 100 books
*/
SELECT DISTINCT country FROM author where number_of_books > 100

/* 
  LIMIT - SELECT EXAMPLE

  Only returns 10 countries
*/
SELECT * FROM country LIMIT 10

/* INSERT EXAMPLE */
INSERT INTO test
  (id, name_test) VALUES
  (1, "TEST-1")
  (2, "TEST-2")
  (3, "TEST-3")
  (99, "TEST-M")

/* UPDATE EXAMPLE */
UPDATE author
  SET first_name="Mariano"
      last_name="Mira"
  WHERE author_id="ad2323fsd"

/* DELETE EXAMPLE */
DELETE FROM author WHERE number_of_books<2