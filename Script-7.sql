CREATE TABLE calisanlar (
id SERIAL PRIMARY KEY,
isim VARCHAR(50) UNIQUE,
maas NUMERIC(10, 2) NOT null,
ise_baslama DATE
);

CREATE TABLE adresler (
adres_id SERIAL PRIMARY KEY,
sokak VARCHAR(30),
cadde VARCHAR(30),
sehir VARCHAR(30),
FOREIGN KEY (adres_id) REFERENCES calisanlar (id)
);

INSERT INTO calisanlar VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');

select * from calisanlar

CREATE TABLE person (
ssn char(9),
isim varchar(50),
soyisim varchar(50),
adres varchar(50)
);

INSERT INTO person VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO person VALUES(234567890, 'Veli','Cem', 'Ankara');  
INSERT INTO person VALUES(345678901, 'Mine','Bulut', 'Ankara');  
INSERT INTO person VALUES(256789012, 'Mahmut','Bulut', 'Istanbul'); 
INSERT INTO person VALUES (344678901, 'Mine','Yasa', 'Ankara');  
INSERT INTO person VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');
INSERT INTO person VALUES(256789018, 'Samet','Bulut', 'Izmir'); 
INSERT INTO person VALUES(256789013, 'Veli','Cem', 'Bursa'); 
INSERT INTO person VALUES(256789010, 'Samet','Bulut', 'Ankara');

SELECT * FROM person;

select isim, soyisim from person order by length(soyisim) 

/*Senaryo 4: person Tüm isim ve soyisim değerlerini aralarında bir boşluk ile 
 * aynı sutunda çağırarak, her bir isim ve soyisim değerinin toplam uzunluğuna 
 * göre sıralayınız.*/
select concat(isim,' ', soyisim) as isim_soyisim from person order by length(isim)+length(soyisim)

select * from person limit 2

CREATE TABLE developers(
id SERIAL PRIMARY KEY,
name varchar(50),
email varchar(50) UNIQUE,
salary real,
prog_lang varchar(20),
city varchar(50),
age int
);


INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Abdullah Berk','abdullah@mail.com',4000,'Java','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mehmet Cenk','mehmet@mail.com',5000,'JavaScript','Istanbul',35);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayşenur Han ','aysenur@mail.com',5000,'Java','Izmir',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Kübra Han','kubra@mail.com',4000,'JavaScript','Istanbul',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Muhammed Demir','muhammed@mail.com',6000,'Java','Izmir',25);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Fevzi Kaya','fevzi@mail.com',6000,'Html','Istanbul',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Enes Can','enes@mail.com',5500,'Css','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Tansu Han','tansu@mail.com',5000,'Java','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Said Ran','said@mail.com',4500,'Html','Izmir',33);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mustafa Pak','mustafa@mail.com',4500,'Css','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Hakan Tek','hakan@mail.com',7000,'C++','Konya',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Deniz Çetin','deniz@mail.com',4000,'C#','Istanbul',30);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Betül Çetin','btl@mail.com',4000,'C#','Bursa',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayse Gul','ayse@mail.com',4000,'C#','Ankara',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ali Seker','ali@mail.com',4000,'C#','Ankara',29);

-- ilk 3 ü getir
select * from developers limit 3

-- ilk 2 yi geç sonraki 3 ü getir.
select * from developers offset 2 limit 3

--maasşı en az olan 3lü
select * from developers order by salary asc limit 3

select * from calisanlar

CREATE TABLE calisanlar1(
id char(5),
isim varchar(50),
maas int,
ise_baslama date
);
INSERT INTO calisanlar1 VALUES('10002', 'Donatello', 12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10003', null, 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10004', 'Donatello', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10005', 'Michelangelo', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10006', 'Leonardo', null, '2019-04-12');
INSERT INTO calisanlar1 VALUES('10007', 'Raphael', null, '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'Ms.April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10002', 'Splinter' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES( null, 'Fred' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10008', 'Barnie' ,10000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10009', 'Wilma' ,11000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10010', 'Betty' ,12000, '2018-04-14');

CREATE TABLE adresler1(
adres_id char(5),
sokak varchar(30),
cadde varchar(30),
sehir varchar(20)
);

INSERT INTO adresler1 VALUES('10003','Ninja Sok', '40.Cad.','IST');
INSERT INTO adresler1 VALUES('10003','Kaya Sok', '50.Cad.','Ankara');
INSERT INTO adresler1 VALUES('10002','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES('10012','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '23.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '33.Cad.','Bursa');


CREATE TABLE teachers(
id int,
firstname varchar(50),
lastname varchar(50),
age int,	
city varchar(20),
course_name varchar(20),
salary real	
);
INSERT INTO teachers VALUES(111,'AhmeT  ','  Han',35,'Istanbul','SpringMVC',5000);
INSERT INTO teachers VALUES(112,'Mehmet','Ran ',33,'Van','HTML',4000);
INSERT INTO teachers VALUES(113,' Bilal','Fan ',34,'Bursa','SQL',3000);
INSERT INTO teachers VALUES(114,'Celal',' San',30,'Bursa','Java',3000);
INSERT INTO teachers VALUES(115,'Deniz',' Can',30,'Istanbul','SQL',3500);
INSERT INTO teachers VALUES(116,'ekreM','Demir',36,'Istanbul','Java',4000.5);
INSERT INTO teachers VALUES(117,'Fatma','Celik',38,'Van','SpringBOOT',5550);
INSERT INTO teachers VALUES(118,'Hakan','Cetin',44,'Izmir','Java',3999.5);
INSERT INTO teachers VALUES(119,'mert','Cetin',32,'Izmir','HTML',2999.5);
INSERT INTO teachers VALUES(120,'Nilay','Cetin',32,'Izmir','CSS',2999.5);
INSERT INTO teachers VALUES(121,'Selma','Celik',40,'Ankara','SpringBOOT',5550);
INSERT INTO teachers VALUES(122,'fatiH','Can',32,'Ankara','HTML',2550.22);
INSERT INTO teachers VALUES(123,'Nihat','Keskin',32,'Izmir','CSS',3000.5);
INSERT INTO teachers VALUES(124,'Hasan','Temel',37,'Istanbul','S.Security',3000.5);


select * from calisanlar1 where isim='Donatello'

select isim, maas from calisanlar1 where maas>5000

select * from adresler1 where sehir='Konya'

select * from adresler1 where sehir='Konya' and adres_id='10002'

SELECT cadde, sehir
FROM adresler1
WHERE sehir = 'Konya'
OR sehir = 'Bursa'

---
CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);

INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

CREATE TABLE calisanlar3 (
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);

INSERT INTO calisanlar3 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar3 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar3 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar3 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar3 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

SELECT * FROM markalar;
SELECT * FROM calisanlar3;

--calisanlar3 tablosunda max maaş değerini bulunuz.
select max(maas) from calisanlar3

--calisanlar3 tablosunda min maaş değerini bulunuz.
select min(maas) from calisanlar3

--calisanlar3 tablosunda toplam maaş değerini bulunuz.
select sum(maas) as toplam_maas from calisanlar3

--calisanlar3 tablosunda ortalama maaş değerini bulunuz.
select round(avg(maas),2) as avg_maas from calisanlar3

--calisanlar3 tablosundaki kayıt sayısını bulunuz.
select count(*) from calisanlar3

--calisanlar3 tablosunda maaşı 2500 olanların kayıt sayısını bulunuz.
select count(*) as kayıt_Sayısı from calisanlar3 where maas=2500

select * from teachers 
--teachers tablosundaki tüm kayıtların
--firstname değerlerini büyük harfe,
-- lastname değerlerini küçük harfe çevirerek,
--uzunlukları ile birlikte listeleyiniz.
select upper(firstname), length(firstname), lower(lastname), length(lastname) from teachers

--teachers tablosunda firstname ve lastname değerlerindeki
--başlangıç ve sondaki boşlukları kaldırınız.
select TRIM(firstname) as clean_firstname, TRIM(lastname) as clean_lastname from teachers

--INITCAP
--isim ve soyisimlerin ilk harfi büyük olsun
select firstname, initcap(firstname), lastname,initcap(lastname) from teachers  

CREATE TABLE manav
(
isim varchar(50),
urun_adi varchar(50),
urun_miktar int
);

INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES( 'Ayse', 'Armut', 3);
INSERT INTO manav VALUES( 'Veli', 'Elma', 2);  
INSERT INTO manav VALUES( 'Hasan', 'Uzum', 4);  
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);  
INSERT INTO manav VALUES( 'Ayse', 'Elma', 3);  
INSERT INTO manav VALUES( 'Veli', 'Uzum', 5);  
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);  
INSERT INTO manav VALUES( 'Veli', 'Elma', 3);  
INSERT INTO manav VALUES( 'Ayse', 'Uzum', 2);

SELECT * FROM manav;


--senaryo 1: manav tablosundaki tüm isimleri ve her bir isim için, toplam ürün miktarını görüntüleyiniz.sıralama ters*/
select isim,sum(urun_miktar) as toplam_urun from manav group by isim order by toplam_urun desc

--Senaryo 3: Her bir ismin aldığı, her bir ürünün toplam miktarını, isme göre sıralı görüntüleyiniz.*/
select isim, urun_adi, sum(urun_miktar) from manav group by isim, urun_adi order by isim 


--Senaryo 4: ürün adina göre, her bir ürünü alan toplam kişi sayısını gösteriniz.Dikkat: tekrarsız kullanımı*/
select  urun_adi, count(distinct isim) from manav group by urun_adi


--Senaryo 5: Isme göre, alınan toplam ürün miktarı ve ürün çeşit miktarını bulunuz*/
select isim, sum(urun_miktar)as toplam , count(urun_adi) as urun_cesit from manav group by isim 


CREATE TABLE personel1 (
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);

INSERT INTO personel1 VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda'); 
INSERT INTO personel1 VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota'); 
INSERT INTO personel1 VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');
INSERT INTO personel1 VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford'); 
INSERT INTO personel1 VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO personel1 VALUES(678901245, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel1 VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');


select * from personel1


select sirket, min(maas) as min_maas from personel1 group by sirket HAVING min(maas) > 4000


SELECT 
	sehir,
	count(DISTINCT id) AS personel_sayisi
FROM personel1 p
GROUP BY sehir
HAVING count(DISTINCT id)>1 ; 

CREATE TABLE calisanlar4 (
id INT UNIQUE, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas INT, 
isyeri VARCHAR(20)
);

INSERT INTO calisanlar4 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar4 VALUES(345678901, null, 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar4 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar4 VALUES(678901234, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(789012345, 'Fatma Yasa', null, 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(890123456, null, 'Bursa', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(901234567, 'Ali Han', null, 2500, 'Vakko');

SELECT * FROM calisanlar4;


Senaryo --1: calisanlar4 tablo  id’si 123456789 olan çalışanın isyeri ismini 'Trendyol' olarak güncelleyiniz.*/
update calisanlar4
set isyeri='Trendyol'
where id = 123456789;

--Senaryo 2: id’si 567890123 olan çalışanın ismini 'Veli Yıldırım' ve sehrini 'Bursa' olarak güncelleyiniz.*/
update calisanlar4
set isim='Veli Yıldırım', sehir='Bursa'
where id = 567890123;

SELECT * FROM markalar;

--Senaryo 3: markalar tablosundaki marka_id değeri 102’ye eşit veya büyük olanların marka_id’sini 2 ile çarparak değiştirin.*/
update markalar 
set marka_id=marka_id*2
where marka_id>=102


-- Senaryo 4: markalar tablosundaki tüm markaların calisan_sayisi değerlerini marka_id ile toplayarak güncelleyiniz.*/
update markalar set calisan_sayisi=calisan_sayisi+marka_id
-- tüm dataları değiştereceğimiz için WHERE kullanmadık.

CREATE TABLE musteriler (
urun_id int, 
musteri_isim varchar(50),
urun_isim varchar(50)
);
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');
SELECT * FROM musteriler;

--Müşteriler tablosundan ürün ismi 'Orange', 'Apple' veya 'Apricot'
--olan verileri listeleyiniz.

select * from musteriler where urun_isim in ('Orange','Apple', 'Apricot')

--Senaryo 1: çalışanlar3 ve markalar tablosuna göre, marka_id si 100 olan firmada çalışanların bilgilerini listeleyiniz

select * from calisanlar3 where isyeri=(select marka_isim from markalar where marka_id=100)

--Senaryo 2: (INTERVIEW QUESTION) calisanlar3 tablosunda max maaşı alan çalışanın tüm fieldlarını listeleyiniz.

select * from calisanlar3  where maas =(select MAX(maas) from calisanlar3)


--Senaryo 2: (INTERVIEW QUESTION) calisanlar3 tablosunda max maaşı alan çalışanın tüm fieldlarını listeleyiniz.Em yüksek 2.

select * from calisanlar3  where maas =(select maas from calisanlar3 order by maas desc offset 1 limit 1)

--Senaryo 3: calisanlar3 tablosunda max veya min maaşı alan çalışanların tüm fieldlarını gösteriniz.

select * from calisanlar3  where maas IN ((select max(maas) from calisanlar3),(select MIN(maas) from calisanlar3))

--veya

SELECT *
FROM  calisanlar3 c
WHERE maas = (SELECT max(maas) FROM calisanlar3 c2)
			  OR
	  maas = (SELECT min(maas) FROM calisanlar3 c2)
	  
--veya UNİON ile
	  
SELECT *
FROM calisanlar3 c
WHERE maas IN (
               SELECT max(maas) FROM calisanlar3
               UNION
               SELECT min(maas) FROM calisanlar3
              );  

--Senaryo 4: Ankara'da calisani olan markalarin marka isimlerini ve calisan sayilarini listeleyiniz.
             
 select marka_isim, calisan_sayisi from markalar where marka_isim IN(select isyeri from calisanlar3 where sehir='Ankara')
	  

--Senaryo 6: Çalisan sayisi 15.000’den cok olan markalarin isimlerini ve bu markada calisanlarin isimlerini ve maaşlarini listeleyiniz.

select isyeri, isim, maas
FROM calisanlar3 c
WHERE isyeri IN
(SELECT marka_isim
FROM markalar m)

--GÜZEL ÖRNEK
--Senaryo 7: Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.
  select marka_id, marka_isim, (select count(sehir) from calisanlar3 where isyeri=marka_isim)  from markalar 
  
--Senaryo 8: Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve min maaşini listeleyen bir Sorgu yaziniz.

  select 
  	marka_isim, 
  	calisan_sayisi, 
  	(select max(maas) from calisanlar3 c where c.isyeri=m.marka_isim),
  	(select MIN(maas) from calisanlar3 c where c.isyeri=m.marka_isim)  
  from markalar m
  
  CREATE TABLE mart
(     
urun_id int,      
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO mart VALUES (10, 'Mark', 'Honda');
INSERT INTO mart VALUES (20, 'John', 'Toyota');
INSERT INTO mart VALUES (30, 'Amy', 'Ford');
INSERT INTO mart VALUES (20, 'Mark', 'Toyota');
INSERT INTO mart VALUES (10, 'Adam', 'Honda');
INSERT INTO mart VALUES (40, 'John', 'Hyundai');
INSERT INTO mart VALUES (20, 'Eddie', 'Toyota');

CREATE TABLE nisan 
(     
urun_id int ,
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO nisan VALUES (10, 'Hasan', 'Honda');
INSERT INTO nisan VALUES (10, 'Kemal', 'Honda');
INSERT INTO nisan VALUES (20, 'Ayse', 'Toyota');
INSERT INTO nisan VALUES (50, 'Yasar', 'Volvo');
INSERT INTO nisan VALUES (20, 'Mine', 'Toyota');

SELECT * FROM mart;
SELECT * FROM nisan;

-- EXIST KULLANIM

--Senaryo 1: “mart” ve “nisan” adlarinda iki tablo oluşturunuz ve Mart ayında 'Toyota' satışı yapılmış ise Nisan ayındaki tüm ürünlerin bilgilerini listeleyiniz.
  
 SELECT * 
FROM nisan n 
WHERE EXISTS (
				SELECT *
				FROM mart m 
				WHERE urun_isim ='Toyota'
				); 
  
  
-- Senaryo 2: Mart ayında 'Volvo' satışı yapılmışsa,
-- Nisan ayındaki tüm ürünlerin bilgilerini listeleyiniz
			
SELECT *
FROM nisan n
WHERE EXISTS (
				SELECT *
				FROM mart m
				WHERE urun_isim ='Volvo'
				);
			
-- Senaryo 3:Mart ayında satılan ürünlerin ürünid ve ürünisimlerini,
-- Eğer ürün(ürünisim) nisan ayındada satılmışsa listeleyen bir sorgu			

SELECT urun_id, urun_isim
FROM mart m
WHERE EXISTS (
				SELECT *
				FROM nisan n
				WHERE n.urun_isim = m.urun_isim
				);
  
  
  
