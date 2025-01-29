select * from personel

update personel set maas=maas+100,
ulke_id='DE'
where id=59;

CREATE TABLE haber (
   id SERIAL PRIMARY KEY,
   tarih DATE,
   baslik CHAR(50),
   metin TEXT,
   goruntu INTEGER
); 

alter table haber
add column ozet varchar(100);


select * from haber

alter table haber
alter column ozet type VARCHAR(250);


--INNER JOIN

SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

/*
PostgreSQL'de UNION operatörünü kullanabilmek için, birleştirmek istediğiniz sorgu sonuçlarının şu koşulları karşılaması gerekir:
1. Aynı sayıda sütun: UNION işlemini uygulayabilmeniz için her iki sorgu da aynı sayıda sütuna sahip olmalıdır.
2. Uyumlu veri türleri: Sütunların aynı veri türünde olması gerekir. Örneğin, bir sorgu integer türünde bir sütun döndürürken, diğer sorgu text türünde bir sütun döndürüyorsa, UNION işlemini uygulayamazsınız.
3. Uyumlu sıralı sütunlar: Her iki sorgunun aynı sırada aynı veri türündeki sütunları döndürmesi gerekir. Yani, ilk sorgunun ilk sütunu integer türünde ise, ikinci sorgunun ilk sütunu da integer türünde olmalıdır.
4. Uyumlu sıralama kuralları: UNION işlemi sonuçları, her iki sorgudan gelen verileri aynı sıralama kurallarına göre birleştirir. Bu, her iki sorguda da aynı ORDER BY ifadesinin kullanılması gerektiği anlamına gelir.
5. Aynı sütun adları (isteğe bağlı): Her iki sorgunun aynı sütun adlarını kullanması gerekmez, ancak sütun adları farklıysa, sonuç kümesinde sütun adları ilk sorgudaki adlara göre belirlenir.
*/

-- SUB QUARY

--Şirketimze ilk sipariş vermiş olan müşterimizin özlük bilgilerini alabilir miyim?


select * from siparis s 
select * from musteri

select * from musteri where id = (select musteri_id from siparis order by tarih  limit 1)

--Şirketimize son sipariş vermiş olan müşterimizin özlük bilgilerini alabilir miyim?
select * from musteri where id = (select musteri_id from siparis order by tarih desc limit 1)

--Şirketimze en yüksek maaşı alan kişinin özlük bilgilerini öğrenebilir miyim?

select ad, soyad from personel where maas=(select maas from personel order by maas desc limit 1)










