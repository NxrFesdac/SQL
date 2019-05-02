-- -------------------------------------------------Ej 1-------------------------------------------

-- SELECT UPPER(CONCAT(first_name, ' ', last_name)) as actor_name FROM sakila.actor;

-- -------------------------------------------------Ej 2 -------------------------------------------


-- SELECT actor_id
-- 	   ,first_name
--        ,last_name 
-- FROM sakila.actor
-- where 
-- first_name like '%Joe%'
-- last_name like '%G%' and last_name like '%E%' and last_name like '%N%'
-- last_name like '%L%' and last_name like '%I%'
-- Order by last_name, first_name;

-- SELECT country_id, country FROM sakila.country Where country in ('Afghanistan', 'Bangladesh', 'China');

-- -------------------------------------------------Ej 3 -------------------------------------------

-- Alter Table sakila.actor
-- Add Column description blob;

-- Alter Table sakila.actor
-- Drop description;

-- -------------------------------------------------Ej 4 -------------------------------------------

-- Select Distinct last_name, count(last_name) as Cuenta from sakila.actor Group by last_name Having count(last_name) >= 2;

-- update sakila.actor
-- set first_name = 'Harpo'
-- Where first_name = 'Groucho' and last_name = 'Williams';

-- update sakila.actor
-- set first_name = 'Groucho'
-- Where first_name = 'Harpo' and last_name = 'Williams';


-- -------------------------------------------------Ej 5 -------------------------------------------

-- show create table address


-- -------------------------------------------------Ej 6 -------------------------------------------

-- SELECT a.first_name, a.last_name, b.address, C.Total_Amount_Paid FROM sakila.staff as A Left Join sakila.address as B ON A.address_id = B.address_id Left Join (SELECT staff_id, SUM(amount) as Total_Amount_Paid FROM sakila.payment Where YEAR(payment_date) = 2005 and MONTH(payment_date) = 8) as C ON A.staff_id = C.staff_id;

-- SELECT A.*, B.Cuenta FROM sakila.film as A INNER JOIN (SELECT film_id, COUNT(distinct actor_id) as cuenta FROM sakila.film_actor Group by film_id) as B ON A.film_id = B.film_id;

-- SELECT Count(inventory_id) as Inventory FROM sakila.inventory Where film_id = (SELECT film_id FROM sakila.film Where title like '%Hunchback Impossible%');

-- SELECT first_name, last_name, Total_amount_Paid FROM sakila.customer as A Left Join (SELECT customer_id, SUM(amount) as Total_Amount_Paid FROM sakila.payment Group by customer_id) as B ON A.customer_id = B.customer_id Order by last_name;

-- -------------------------------------------------Ej 7 -------------------------------------------

-- SELECT title FROM sakila.film Where (title like 'Q%' or title like 'K%') and language_id = (SELECT language_id FROM sakila.language where name = 'English');

-- SELECT B.first_name, B.last_name FROM sakila.film_actor as A LEFT JOIN (SELECT * FROM sakila.actor) AS B ON A.actor_id = B.actor_id where film_id = (SELECT film_id FROM sakila.film Where title = 'Alone Trip');

-- SELECT first_name, last_name, email FROM sakila.customer where address_id in (SELECT address_id FROM sakila.address where city_id in (SELECT city_id FROM sakila.city Where country_id = (SELECT country_id FROM sakila.country where country = 'Canada')));

-- SELECT * FROM sakila.film where film_id in (SELECT film_id FROM sakila.film_category where category_id = (SELECT category_id FROM sakila.category Where name = 'Family'));

-- SELECT b.film_id, COUNT(b.film_id) as Veces_Rentadas FROM sakila.rental as A LEFT JOIN (SELECT * FROM sakila.inventory) as B ON A.inventory_id = B.inventory_id GROUP by b.Film_id ORDER by COUNT(b.film_id) desc;

-- SELECT store_id, SUM(amount) as Money FROM sakila.payment as A LEFT JOIN (SELECT * FROM sakila.staff) as B ON A.staff_id = B.staff_id Group by store_id;

-- SELECT store_id, city, country FROM sakila.store as A LEFT JOIN (SELECT * FROM sakila.address) as B ON A.address_id = B.address_id LEFT JOIN (SELECT * FROM sakila.city) as C ON B.city_id = c.city_id LEFT JOIN (SELECT * FROM sakila.country) as D ON C.country_id = D.country_id;

-- SELECT E.name, sum(amount) as Money FROM sakila.payment as A LEFT JOIN (SELECT * FROM sakila.rental) as B ON A.rental_id = B.rental_id LEFT JOIN (SELECT * FROM sakila.inventory) as C ON B.inventory_id = C.inventory_id LEFT JOIN (SELECT * FROM sakila.film_category) AS D ON C.film_id = D.film_id LEFT JOIN (SELECT * FROM sakila.category) as E ON D.category_id = E.category_id GROUP by E.name Order by sum(amount) desc LIMIT 5;

-- -------------------------------------------------Ej 8 -------------------------------------------

-- CREATE VIEW Simio as SELECT E.name, sum(amount) as Money FROM sakila.payment as A LEFT JOIN (SELECT * FROM sakila.rental) as B ON A.rental_id = B.rental_id LEFT JOIN (SELECT * FROM sakila.inventory) as C ON B.inventory_id = C.inventory_id LEFT JOIN (SELECT * FROM sakila.film_category) AS D ON C.film_id = D.film_id LEFT JOIN (SELECT * FROM sakila.category) as E ON D.category_id = E.category_id GROUP by E.name Order by sum(amount) desc LIMIT 5;

-- SELECT * FROM [Simio]

-- DROP VIEW Simio