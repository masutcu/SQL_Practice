-- VACUUM komutu
/* PostgreSQL'de bir tablo veya veri silindiğinde disk 
 * alanını geri kazanmak istiyorsanız, VACUUM komutunu 
 * kullanabilirsiniz. VACUUM komutu silinen verilerin yer 
 * kaplamasını önler, boş alanı temizler ve veritabanındaki
 *  diğer işlemler için kullanılabilir hale getirir. */

-- Syntax: VACUUM FULL table_name;
-- MySQL de PURGE komutunmunu karşılığı


--alter TABLE


CREATE TABLE public.persons (
id SERIAL PRIMARY KEY,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL UNIQUE
);

--person tablosuna email isimli bir field ekleyiniz

ALTER TABLE persons 
ADD email varchar(15) NOT NULL;

select * from persons

--person tablosuna adress isimli bir field ekleyiniz

ALTER TABLE persons 
ADD address VARCHAR(100) ;


--person tablosuna adress  field İ siliniz 
ALTER TABLE persons 
DROP address ;

--veri tipini değiştirerim

ALTER TABLE persons 
alter column phone type varchar(20)  ;

--tablonun adını değiştirelim
ALTER TABLE persons 
rename TO contacts;

select * from contacts

-- contact tablosundaki phone field adını contact_number olarak değiştiriniz
alter table contacts 
rename column phone to contact_number;


--SUB QUARY

--customer ID yi kullanrak score u 500 den büyük olan
-- customer ların order larını getir..


select * from customers c 
select * from ORDERS


select customer_id from customers where score>500

select * from orders where customer_id in (
											select customer_id from customers where score>500
											)

											
--EXIST Kullanımı
SELECT * 
FROM orders o 
WHERE EXISTS(
			 SELECT 1
			 FROM customers c 
			 WHERE c.customer_id = o.customer_id 
			 AND 
			 score >500
			);
		
		
		
		
		
		
		
		



