select ad, soyad, maas from personel

select musteri_id from siparis
--Şimdiye kadar en az bir sipariş vermiş olan müşterilerin ID'lerinin listesi
select distinct musteri_id from siparis --unique müsteri id ler 

--ilk alışveriş yapan müşteri
select * from siparis

select musteri_id from siparis order by tarih asc limit 1

--ofset ve limit kullanımı
SELECT * FROM siparis OFFSET 2 LIMIT 2

-- sutun isimlerini değiştirelim
select ad as A, soyad as S, maas from personel

select * from personel where ad='Mehmet' and soyad='Ozman'

select * from personel where ad='Mehmet' or ad='Dilek'

select * from personel where (ad='Mehmet' or ad='Dilek') and maas>1400

--maasşı 1000 ile 2000 arasında olan çalışanların ad, soyad, maas bilgilerini maaş azdan çoka sıralı getir
select ad, soyad, maas from personel where maas between 1000 and 2000 order by maas

--1978 yılında doğanlar
select ad, soyad,dogum from personel where dogum between '1978-01-01' and '1978-12-31'

-- verilen bir tarih ile doğum günleri farkını bir sutunda gösterme
select id, ad, soyad, ('2012-12-21' - dogum) as gunfarki from personel 

SELECT *
FROM personel
WHERE ad IN ('Mehmet', 'Dilek', 'Cengiz')
ORDER BY ad, soyad;

--EŞİT DEĞİLDİR OPERATÖRÜ
    <>   veya   !=
    

SELECT ad, soyad, maas
FROM personel
ORDER BY ad DESC ,soyad DESC, maas ASC ;

--sum
select sum(maas) as toplam_maas from personel p 

--
select sum(maas) as mehmet_toplam_maas from personel where ad ='Mehmet'

SELECT sum (maas)
FROM personel
WHERE departman_id = 1

select departman_id, sum(maas) as dept_top_maas from personel group by departman_id order by departman_id asc

-- AVG ve ROUND 
select departman_id, round(avg(maas)) as dept_top_maas from personel group by departman_id order by departman_id asc

--virgülden sonra 1 hane
SELECT round(AVG(maas),2) AS ortalama_departman_maas, departman_id
FROM personel
GROUP BY departman_id
ORDER BY departman_id asc

select max(maas) from personel

select max(maas)-min(maas) as fark_maas from personel

select departman_id, count(id) as countbydepartman from personel group by departman_id order by departman_id

select * from personel

select ulke_id, count(id) from personel group by(ulke_id)