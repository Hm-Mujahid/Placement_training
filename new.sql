
select enclosure_name , enclosure_id, count(encosure_id)
from enclosure
group by count(encosure_id) DESC
LIMIT 2; 

write a SQL query to display the enclosure_name and total visitors of each enclosure Order by total visitors in descending order?
select e.name , count(v.Visitor_id)
from enclosure e
Left Join enclosure_visit_log v
order by count(v.Visitor_id) DESC;