.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest having count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT student1.pet, student1.song, student1.color, student2.color
  FROM students AS student1 JOIN students AS student2 ON student1.pet = student2.pet 
  AND student1.song = student2.song AND student1.time <> student2.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b where a.time = b.time
  AND a.number=7 and b.'7'='True';


CREATE TABLE avg_difference AS
  SELECT round(avg(abs(number - smallest))) FROM students;

