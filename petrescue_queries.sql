-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table. --

SELECT SUM(COST) as TOTAL_COST FROM PETRESCUE;

-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST. -- 

SELECT SUM(COST) as SUM_OF_COST FROM PETRESCUE;

-- Query A3: Enter a function that displays the maximum quantity of animals rescued. --

SELECT MAX(QUANTITY) as MAX_QUANT_ANIMALS FROM PETRESCUE;

-- Query A4: Enter a function that displays the average cost of animals rescued. --

SELECT ROUND(AVG(CAST(COST as FLOAT)),2) FROM PETRESCUE;


-- Query A5: Enter a function that displays the average cost of rescuing a dog. --

SELECT ROUND(AVG(CAST(COST as FLOAT)),2) FROM PETRESCUE 
WHERE ANIMAL = 'Dog';

-- Query B1: Enter a function that displays the rounded cost of each rescue.--

SELECT ROUND(COST, 2) as ROUNDED_COST FROM PETRESCUE;

-- Query B2: Enter a function that displays the length of each animal name.--

SELECT LENGTH(ANIMAL) as LENGTH_ANIMAL_NAME FROM PETRESCUE;

-- Query B3: Enter a function that displays the animal name in each rescue in uppercase.--

SELECT UCASE(ANIMAL) as UPPER_NAME FROM PETRESCUE;

-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.--

SELECT DISTINCT(UCASE(ANIMAL)) FROM PETRESCUE;

-- Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query. --
SELECT *, LCASE(ANIMAL) as LOWER_NAME FROM PETRESCUE 
WHERE ANIMAL = 'Cat';

-- Query C1: Enter a function that displays the day of the month when cats have been rescued.

SELECT DAYOFMONTH(RESCUEDATE) FROM PETRESCUE
WHERE ANIMAL = 'Cat';

-- Query C2: Enter a function that displays the number of rescues on the 5th month.

SELECT SUM(QUANTITY) as QUANTITY_MONTH_5 FROM PETRESCUE
WHERE MONTH(RESCUEDATE) = 5;

-- Query C3: Enter a function that displays the number of rescues on the 14th day of the month.
SELECT SUM(QUANTITY) as QUANTITY_14th FROM PETRESCUE
WHERE DAYOFMONTH(RESCUEDATE) = 14;

-- Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
SELECT (RESCUEDATE + 3 DAYS) as DAY_OF_VET FROM PETRESCUE;

-- Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
SELECT (CURRENT_DATE - RESCUEDATE) as DIFF_TODAY_RESCUEDATE FROM PETRESCUE;