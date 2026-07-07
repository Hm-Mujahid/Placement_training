
select enclosure_name , enclosure_id, count(encosure_id)
from enclosure
group by count(encosure_id) DESC
LIMIT 2; 

write a SQL query to display the enclosure_name and total visitors of each enclosure Order by total visitors in descending order?
select e.name , count(v.Visitor_id)
from enclosure e
Left Join enclosure_visit_log v
order by count(v.Visitor_id) DESC;

SELECT a.name AS animal_name,
       f.food_item
FROM Animal a
JOIN Feeding_Schedule f
ON a.animal_id = f.animal_id
WHERE a.name LIKE 'M%'
  AND f.quantity > 5;

  Write a sql query to display the animals name use alias animal_name , species , gender and caretakers full name?

SELECT
    a.Name AS animal_name,
    a.Species,
    a.Gender,
    CONCAT(c.First_Name, ' ', c.Last_Name) AS caretaker_full_name
FROM animal a
JOIN animal_caretaker ac
    ON a.Animal_ID = ac.Animal_ID
JOIN caretaker c
    ON ac.Caretaker_ID = c.Caretaker_ID;
