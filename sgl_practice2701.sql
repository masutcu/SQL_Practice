-- Tablo oluşturma
CREATE TABLE ogrenciler(
	id int primary key,
	isim varchar(30),
	adres varchar(100),
	sinav_notu integer
	);

-- Tabloya veri ekleme
insert into ogrenciler values(1, 'Betul Kuyucu','Istanbul', 80)

-- Tabloya çoklu veri ekleme 
insert into ogrenciler(id, isim, adres, sinav_notu) values
	(2,'Ali Sütçü', 'Ankara',100),
	(3,'Hasan Torun', 'Kastamonu',50),
	(4,'Bayram Bayram', 'İzmir',70),
	(5,'Mehmet Ali', 'Ankara',90);
insert into ogrenciler(id, isim, sinav_notu) values
	(6,'Hatice Duru',80),
	(7,'Kevser Sakarya',70),
	(8,'Tuğba Boğankankin',100);

select * from ogrenciler

--SORU1 ogrenciler tablosundaki id ve isim bilgileri ile ilgili tüm kayıtları getir
select id, isim from ogrenciler
--SORU2 Sınav notu 80 den büyük olan öğrencilerin tüm bilgilerini listeleyin
select * from ogrenciler where sinav_notu > 80
--SORU 3 Adresi anakara olan öğrencilerin bilgileri
select * from ogrenciler where adres='Ankara'
--SORU4 Sınav notu 80 den büyük ve adresi İstanbul olan öğrencilerin tüm bilgileri
select * from ogrenciler where sinav_notu>80 and adres='Ankara'
--SORU5 Sınav notu 80 veya 100 olan öğrenci isimleri
select isim from ogrenciler where sinav_notu=80 or sinav_notu=100
--veya 2. yol
select isim from ogrenciler where sinav_notu in (80,100)
--SORU6 Sınav notu 65 ile 85 arasında olan ogrencilerin tüm bilgileri
select * from ogrenciler where sinav_notu between 65 and 85
--SORU7 İd si 3 ve 5 arasında olmayan oğrencilerin isim ve sınav notunu listele
select isim, sinav_notu from ogrenciler where id not in (3,4,5)
--veya 2. yol
select isim, sinav_notu from ogrenciler where id not between 3 and 5 
--SORU8 En yüksek sınav puanı nedir
select max(sinav_notu) from ogrenciler
--SORU9 İzmirde yaşayan ve sınav notu 50 den yüksek olan öğrencilerin listesi
select * from ogrenciler where adres='İzmir' and sinav_notu>50
--SORU10 öğrenci sayısı ve ortalama sınav notu
select count(*) as ogrenci_sayisi, avg(sinav_notu) as ort_sinav_notu from ogrenciler
--ROUND kullanımı
select count(*) , round(avg(sinav_notu),2)  from ogrenciler
--soru 11 sinav notu 80 olan satırı siliniz
delete from ogrenciler where sinav_notu=80
--Soru12 ismi bayram bayram veya kevser sakarya olan satırları siliniz
delete from ogrenciler where isim in('Bayram Bayram', 'Kevser Sakarya')
--Soru 13 Öğrenciler tablosunun tüm içeriğini siliniz
--delete from ogrenciler veya
truncate table ogrenciler
--Soru 14 Ögrenciler tablosunu siliniz
drop table ogrenciler











