use sakila;

-- SELECT * FROM actor;

/*Select last_name
From actor
where first_name="John";*/

/*Select *
From actor
where last_name="Neeson";*/

-- Select If (actor_id/10, first_name, NUll) From actor;

-- Select description From film Where film_id =100;

-- Select * From film Where rating="R";

-- Select * From film Where rating!="R";

-- Select * From film ORder by length ASC limit 10;

-- Select MAX(length),film_id, title From film;

-- select * From film where special_features like "%Deleted Scenes%";

-- Q11 select DISTINCT last_name From actor Order by last_name DESC;
-- select last_name, Count(last_name) From actor group by last_name HAVING Count(last_name)=1 Order by last_name DESC;

-- Q12 Select last_name, Count(*) as frq from actor group by last_name order by frq DESC;
-- Select last_name, Count(*) as frq from actor group by last_name HAVING (frq>1) order by frq DESC;

-- Q13 select actor_id, Count(actor_id) as flms from film_actor group by actor_id order by flms DESC limit 1;
-- select first_name, last_name, Count(f.actor_id) as flms from film_actor f Join actor a on f.actor_id=a.actor_id group by f.actor_id order by flms DESC limit 1;

 /* -- Q14
 Select return_date, inventory_id, last_update from rental 
 where inventory_id in(
	Select inventory_id from inventory
    where film_id=(
    select film_id from film where title= "Academy Dinosaur")
    )
    ;*/
    
   -- Q15 Select AVG(length) From film; 
   
   -- Q16  Select category_id, AVG(length) as avl from film f Join film_category fc ON f.film_id=fc.film_id group by category_id;
   
-- Q17  select * From film where description LIKE "%Robot%";

-- Q18  select * from film where release_year =2010;

-- Q19 select * from  film_list where category="Horror";
 
 -- select first_name, last_name from staff where staff_id=2;
 
 -- select * from film_list where actors like "%Fred Costner%";

-- select DISTINCT count(country) from country;

-- select name from language Order by name DESC;

-- select first_name, last_name from actor where last_name like "%son" order by first_name ASC;

-- select count(*) as film_number, category from film_list  group by category limit 1;
