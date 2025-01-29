-- DATABASE oluşturma
create database test

-- Tablo oluşturma 
create table ogrenciler(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(30),
not_ort real, --ondalıklı sayılar için
kayit_tarihi date
)

-- Tabloyu çağıralım
select * from ogrenciler

-- Var olan bir tablodan yeni tablo oluşturma
create table ogrenci_notlari
as 
select isim, soyisim, not_ort from ogrenciler

select * from ogrenci_notlari

-- Data ekleme
insert into ogrenciler
values ('1234567','Tom','Cruise',85.5,'2024-05-25')

insert into ogrenciler
values ('2345678','Ali','Can',85.5, now())

insert into ogrenciler (isim,soyisim)
values ('Brad','Pitt')

--DBeaver daki GenerateSQL kullanımında örnek
SELECT ogrenci_no, isim, soyisim, not_ort, kayit_tarihi
FROM public.ogrenciler;
--DBeaver daki GenerateSQL kullanımında örnek
INSERT INTO public.ogrenci_notlari
(isim, soyisim, not_ort)
VALUES('Mehmet', 'SUTCU', 90);

/*Yorum satırı 
 * çok satır  
 */
drop table ogrenci_notlari 

-- CONSTRAINT KISITLAMALAR
-- UNİQUE AND NOT NULL
create table ogrenciler2(
ogrenci_no char(7) UNIQUE,
isim varchar(20) not NULL,
soyisim varchar(30) not NULL,
not_ort real,
kayit_tarihi date
)

insert into ogrenciler2 values('1234567','Ahmet','ATEŞ',72,now())
select * from ogrenciler2

create table ogrenciler3(
ogrenci_no char(7) primary key,
isim varchar(20) not NULL,
soyisim varchar(30) not NULL,
not_ort real,
kayit_tarihi date
)

-- Diğer kullanım 
create table ogrenciler4(
ogrenci_no char(7),
isim varchar(20) not NULL,
soyisim varchar(30) not NULL,
not_ort real,
kayit_tarihi date,
constraint ogr_no_pk primary key (ogrenci_no)
)
/*primary key sutununun ismini değiştirmek istiyor isek 
 *constraint i aşağıda tanımlıyoruz. Yoksa sutun satırında
 *primary key olarak tanımlıyoruz.*/
select * from ogrenciler4
-- Foreign Key:Tablolar arasında ilişki oluşturmak içindir.
-- Değer olarak "null" kabul eder
-- Tekrarlanan verileri kabul eder
-- Bir tablo birden çok "Foreign Key" alanına sahip olabilir.

create table sirketler(
sirket_id int,
sirket varchar(50) primary key,
personel_sayisi int
)

insert into sirketler values(1,'Honda',1250)

CREATE TABLE personel(
id INTEGER,
isim varchar(50)PRIMARY KEY,
sehir varchar(50),
maas real,
sirket varchar(50),
foreign key (sirket) references sirketler(sirket)
) 

--CHECK İLE KISITLAMA
create table person(
id int,
name varchar(50),
salary real check(salary>5000),
age int check(age>0)
)

insert into person values(11,'ali can', 4999 , 27) --hata verir
insert into person values(11,'ali can', 5001 , -3) --hata verir





















