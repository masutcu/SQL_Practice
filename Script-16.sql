--practice day2

select * from employees
-- eployees tablosundaki farklı emailleri listeleyiniz.
select distinct (email) from employees
--tablodaki ilk 5 kayıt
select * from employees limit(5)
--6 dn itibaren 5 tane göster
select * from employees offset(5) limit(5)
--id ye göre son 3 kaydı getir
select * from employees order by id desc limit(3)
--tablodan departmanı it olanların bilgileri
select * from employees where department='IT'
--tablodakii yaşı 30 dan büyük olan çalışanları gürüntüleyin
select * from employees where age>30
--yaşı 30 dan küçük veya şehri Roma olana çalışanlar
select * from employees where age<30 or city='Rome'
--dapartmanı sales ve yaşı 30 dan küçük olanlar
select * from employees where department='Sales' and age<30
--departmanı sales, hr veya it olanlar
select * from employees where department in('Sales','IT','HR')
--departmanı sales, hr veya it olmayanlar
select * from employees where department not in('Sales','IT','HR')
--departmanı sales, hr ve it olanların isim yaş ve departmanlarını yaşlarına göre sıralayarak listele
select name, age, department from employees where department in('Sales','HR','IT')order by age asc
--yaşı 25 30 arası olanların isim ve yaşları
select name, age from employees where age between 25 and 30;
select name, age from employees where age>=25 and age<=30;
--yaşı 25 ten küçük veya 30 dan büyük olanlar
select * from employees where age<25 or age>30;
--veya 
select * from employees where age not between 25 and 30;
--tabloda maillleri mail.com ile bitenlerin isim ve maillerini isme göre artan sıralı
select name, email from employees where email like('%mail.com') order by name
--ismi an hecesini içerenlerin isimlerini --ileke kullanımı ile ignore case yapılıyor
select name from employees where name ilike '%an%'
--isminin 2. harfi a 3. harfi n olan çalışanları görelim
select name from employees where name like '_an%'
--tablodan yaşları 30 dan büyük olanları siliniz
delete from employees where age>30
--Moskow şehrindeki tüm çalışanlaerı sil
delete from employees where city='Moscow';
--eposta adresi john ile başlayan çalışanları sil
delete from employees where email ilike 'john%'
--departmanının 2. harfi R olanları siliniz
delete from employees where department like '_R%'
--tüm çalışanları siliniz DML komutu ile
delete from employees

--veya DDL komu ile - bu komut önce tabloyu siler sonra iskeleti yeniden kurar
truncate table employees

select * from personal

--personel tablosundaki tüm çalışanların toplam maaşını
select sum(salary) as top_maas from personal
--tüm çalışanların ortalama maaşını bulunuz
select round(avg(salary),2) as ort_maas from personal
--IT bölümünde en yüksek maaş
select max(salary) from personal where department='IT'
--newyork, berlin veya tokyoda çalışanların sayısını bulunuz
select count(*) from personal where city in ('New York','Berlin','Tokyo')
--tüm çalışanların adlarını büyük harfle görüntüle, küçük harf lower, ilk harf büyük initcap
select upper(name) from personal
select initcap(email) from personal
--isim ve şehir sutunlarını aynı sutunda görüntüle
select concat(name, ' from ', city) from personal 
--example.com olarak biten mail adreslerini company.com olarak değiştir
select replace(email, '@example.com', '@company.com') from personal
--her departmandaki ortalama yaşı görüntüleyiniz
select department, avg(age) from personal group by department
--ortalama maaşı 60000 üzerinde olan departmanları görüntüleyiniz
select department, avg(salary) from personal group by department having avg(salary)>60000
--yaşı 30 dan küçük olan çalışanların ortalama maaşı 60000 in üzerindekilerin departmalarını
select department, avg(salary) from personal where age<30 group by department having avg(salary)>60000
--John Doe maaşını 70000 olarak güncelle
update personal set salary=70000 where name='John Doe'
--şehri berlin olanların bölümünü menagement olarak değiştir
update personal set department='menagement' where city='Berlin'









