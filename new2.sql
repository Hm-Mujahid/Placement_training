SELECT
    a.Name AS animal_name,
    a.Species,
    a.Gender,
    CONCAT(c.First_Name, ' ', c.Last_Name) AS caretaker_full_name
FROM animal a
JOIN animal_caretaker ac
    ON a.Animal_ID = ac.Animal_ID
JOIN caretaker c