--order by kullanımı
select * from customers order by score desc --tersten sıralama,  pstgresql null hücreyi sona atar

--eğer null değerler en üste gelsin istersek 
select * from customers order by score asc nulls first

--önce country ye göre sırala sonra ülkeleri kendi içinde tersten score a göre sırala
select * from customers order by country asc, score desc

--OrderBy kullanımında field adı yerine field sıra numarasıda yazılabilir.
select * from customers order by 4 asc, 5 desc

-- where statement 
select * from customers where score>500

--AND
select * from customers where country='Germany' and score<400

--OR
select * from customers where country='Germany' or score<400

--NOT
select * from customers where  not score<500

--Between de sınırlar dahildir.
select * from customers where  score between 100 and 500

--IN 
select * from customers where customer_id in (1,2,5) 

--LIKE
select * from customers where first_name like '%n'

--3.harfi r olanlar
select * from customers where first_name like '__r%'

--case sensitive değil , * olmaz ise case sansitive olur. ~ altgr+ü harfi
select * from customers where last_name ~* 'c[ar]amer'

--Group By
select count (*) as total_customer, country  from customers group by country order by count(*) desc

--sum
select sum(quantity) as toplam_miktar from orders 

--AVG
select AVG(score) as avg_score from customers

--eğer null değerler belli bir değer ile ortalamaya katılmak istenirse coalesce()
select AVG(coalesce (score, 0)) as avg_score from customers

--max
select max(score) as max_score from customers

--min --tarihlerle alakalı min max kullanılabilir
select min(order_date) as first_order from orders

--String Manipilation

--CONCAT 
select concat(first_name,' ',last_name) as cust_name from customers

--UPPER
select lower(first_name), upper(last_name) from customers

--LENGTH
select last_name, length(last_name) as len_lastname from customers
   
--TRIM
select last_name, length(last_name) as trimsiz, TRIM(last_name) as clean_lastname, length(TRIM(last_name)) as trimli from customers  
   
--SUBSTRING --2 karakterden başla 3 karakter al diyoruz
SELECT last_name, substring(last_name,2,3) FROM customers c

select country, max(score) from customers  group by country 

--HAVİNG
select * from customers

select country, count(country) from customers group by country having count(country)>1

INSERT INTO customers values( default, 'Anna', 'Nixon', 'UK', null)

--DATA MANİPULATİON LANGUAGE --UPDATE KOMUTU
--ismi anna olan kişinin ülkesini germany yapalım
update customers set country='Germany' where first_name='Anna'

update customers set country='TR' where first_name='Maria'

--DELETE satırları siler, TRUNCATE ise tabloyu tamamen boşaltır. DROP ise tabloyuda siler
delete
from customers
where customer_id IN (5,6)

--Tablodaki tüm customers'ları siliniz
truncate table customers

INSERT INTO customers (customer_id, first_name, last_name, country, score) VALUES
(1,'Maria', 'Cramer', 'Germany',350),
(2,'John','Steel','USA', 900),
(3,'Georg','Pipps', 'UK', 750),
(4,'Martin','Müller','Germany', 500),
(5,'Peter','Franken','USA', NULL);




