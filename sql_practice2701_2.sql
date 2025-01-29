create table filmler(
	film_id int,
	film_name varchar(30),
	category varchar(30)
);

insert into filmler(film_id, film_name, category) values
	(1,'Eyvah Eyvah','Komedi'),
	(2,'Kurtlar Vadisi','Aksiyon'),
	(3,'Eltilerin Savaşı','Komedi'),
	(4,'Aile Arasında','Komedi'),
	(5,'Gora','Bilim Kurgu'),
	(6,'Organize İşler','Komedi'),
	(7,'Babam ve Oğlum','Dram');

create table aktorler(
	id int,
	actor_name varchar(30),
	film_id int
);

insert into aktorler(id, actor_name,film_id) values
	(1,'Ata Demirel',1),
	(2,'Necati Şaşmaz',2),
	(3,'Gupse Ozay',3),
	(4,'Engin Günaydın',4),
	(5,'Cem Yılmaz',1);


--inner join
--left join
--right join
--full join
--self join

--SORU1 TÜM film isimlerini , katagorilerini ve filmlerde oynayan aktör isimlerini listeleyin
select film_name, category, actor_name from filmler left join aktorler on filmler.film_id=aktorler.film_id
--veya 
select film_name, category, actor_name from filmler as f left join aktorler as a on f.film_id=a.film_id

--SORU 2 Tüm aktör isimlerini ve oynadığı filmleri listeleyiniz
select actor_name, film_name from filmler as f right join aktorler as a on f.film_id=a.film_id

create table Customers(
	customer_id int primary key,
	name varchar(30),
	email varchar(50)
);

insert into Customers(customer_id, name, email) values
	(1, 'ali','ali@gmail.com'),
	(2, 'ayse','ayse@gmail.com'),
	(3, 'fatih','fatih@gmail.com');

create table Orders(
	order_id int primary key,
	customer_id int,
	product varchar(50),
	price decimal(8,2),
	foreign key(customer_id) references Customers(customer_id)
);
insert into Orders(order_id, customer_id, product, price) values
	(101,1,'Laptop', 25000.00),
	(102,1,'Printer', 5000.00),
	(103,2,'Tablet', 15000.00),
	(104,3,'Phone', 45000.00),
	(105,3,'Camera', 35000.00);

--Soru1 müşteri ismine ait ürün ve fiyatı inner join kullanarak birleştirin.
select name, product, price from Customers as c inner join Orders as o on c.customer_id=o.customer_id
--left join yapsakta aynı sonucu alırız

delete from orders
insert into Orders(order_id, customer_id, product, price) values
	(101,1,'Laptop', 25000.00),
	(102,1,'Printer', 5000.00),
	(103,2,'Tablet', 15000.00),
	(104,null,'Phone', 45000.00),
	(105,null,'Camera', 35000.00);

--SORU 2 iki tablodaki tüm dataların hepsini getiriniz.
select name, product, price from customers full join orders on customers.customer_id=orders.customer_id

create table Employees(
	employee_id int primary key,
	name varchar(50),
	department varchar(50),
	manager_id int
); 
	
insert into Employees(employee_id, name, department, manager_id) values
	(1,'Ali', 'IT', 2),
	(2,'Ayse', 'IT', null),
	(3,'Fatih', 'Marketing', 4),
	(4,'Mehmet', 'Marketing', null),
	(5,'Elif', 'Dev', 1);

--SORU 3 İnner join kullanarak employee name ve manager_name leri gösteriniz
--inner joinde karşılığı null olanlar gelmez.
--Bir tabloyu kendisi ile join yapmamıza self join deniliyor. Tavsiye edilen bir yöntem değildir.
select e.name employee_name, m.name manager_name 
	from Employees e inner join  Employees m on m.employee_id=e.manager_id

drop table ogrenciler
create table ogrenciler(
	id int,
	isim varchar(50),
	sehir varchar(50),
	puan int,
	bolum varchar(20)
)
insert into ogrenciler values(100, 'Ahmet Umit', 'Istanbul', 546, 'Bilgisayar');
insert into ogrenciler values(101, 'R.Nuri Gultekin', 'Antalya', 446, 'Bilgisayar');
insert into ogrenciler values(102, 'S.Faik Abasıyanık', 'Bursa', 501, 'Matematik');
insert into ogrenciler values(103, 'Yasar Kemal', 'Istanbul', 473, 'Psikoloji');
insert into ogrenciler values(104, 'Halide E. Adıvar', 'Istanbul', 432, 'Bilgisayar');
insert into ogrenciler values(105, 'Nazan Bekiroğlu', 'Izmir', 535, 'Bilgisayar');
insert into ogrenciler values(106, 'Peyami Safa', 'Antalya', 492, 'Edebiyat')
insert into ogrenciler values(107, 'Sabahattin Ali', 'Istanbul', 375, 'Coğrafya');
--SORU1 isimleri a harfi ile başlayan öğrenci bilgileri (ilike ile case sansitive ortadan kaldırılır.)
select * from ogrenciler where isim like 'A%';
select * from ogrenciler where isim ilike 'a%';
--SORU2 isimleri sonu a harfi ile biten öğrenci bilgileri
select * from ogrenciler where isim ilike '%a';
--SORU3 isimleri  a harfi ile başlayan ve bilgisayar bölümünde okuyan öğrenci bilgileri
select * from ogrenciler where isim ilike 'a%' and bolum='Bilgisayar';
--SORU 4 isimleri 'n' harfi içeren öğrencileri getirin
select * from ogrenciler where isim ilike '%n%'
--SORU 5 isimleri 'n' harfi ile başlamayan öğrencileri getirin
select * from ogrenciler where isim not like 'N%';
--Soru 6 isimleri 12 karakterden daha uzun olan öğrencileri getir
select * from ogrenciler where length(isim)>12
--Soru 7 4. harfi a olan öğrenci bilgilerini getir
select * from ogrenciler where isim like '___a%'
--Soru 8 isminin içinde z veya k harfi geçen öğrenciler
select * from ogrenciler where isim ilike '%z%' or isim ilike '%k%'
--veya regex ile 
select * from ogrenciler where isim ~'[kz]'
--veya regex ile büyük küçük farketmesin demek için 
select * from ogrenciler where isim ~*'[kz]'
--ismi y veya n harfi ile başlayan öğrenci bilgileri getir
--1.yol
select * from ogrenciler where isim ilike 'y%' or isim ilike 'n%'
--2. yol regax ile başa konan şapka ^ işareti başlangıçta aramayı belirtir.
select * from ogrenciler where isim ~* '^[YN]'

