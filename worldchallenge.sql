use world;

-- Q1

-- Q2 select population, lifeExpectancy from country where Name="Argentina";

-- Q3 select name, lifeExpectancy from country order by lifeExpectancy DESC limit 1;

-- Q4 select * from city c1 JOIN country c2 ON c1.CountryCode = c2.Code Where c2.Capital=C1.ID AND c2.name="Spain"; 

-- Q5
Create View CC As
select * /*c1.name as city, c2.name as Country*/ from city c1 JOIN country c2 ON c1.CountryCode = c2.Code;
