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








