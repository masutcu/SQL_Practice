--Practice Day02
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    city VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    department VARCHAR(50)
    );

INSERT INTO employees (name, age, city, email, phone_number, department) VALUES
('John Doe', 25, 'New York', 'john.doe@example.com', '555-1234', 'IT'),
('Jane Smith', 30, 'London', 'jane.smith@example.com', '555-5678', 'Finance'),
('Michael Brown', 28, 'Paris', 'michael.brown@mail.com', '555-9876', 'HR'),
('Emily Johnson', 22, 'Berlin', 'emily.johnson@example.com', '555-2222', 'Marketing'),
('David Lee', 35, 'Tokyo', 'david.lee@mail.com', '555-4444', 'IT'),
('Maria Garcia', 27, 'Moscow', 'garcia@mail.com', '555-7777', 'Sales'),
('Christopher Martinez', 29, 'Sydney', 'christopher.martinez@example.com', '555-6666', 'Finance'),
('Sarah White', 26, 'Toronto', 'white@example.com', '555-8888', 'HR'),
('James Taylor', 31, 'Los Angeles', 'james.taylor@example.com', '555-3333', 'IT'),
('Jennifer Adams', 33, 'Rome', 'jennifer.adams@example.com', '555-1111', 'Marketing'),
('Daniel Hernandez', 28, 'Seoul', 'daniel.hernandez@example.com', '555-9999', 'Sales'),
('Amanda Thomas', 24, 'Rio de Janeiro', 'amanda.thomas@example.com', '555-5555', 'Finance'),
('Robert White', 32, 'Mumbai', 'white@example.com', '555-4444', 'IT'),
('Megan Scott', 29, 'Cairo', 'megan.scott@example.com', '555-7777', 'Sales'),
('Kevin Garcia', 27, 'Mexico City', 'garcia@mail.com', '555-2222', 'Marketing');

select * from employees

--1-employees tablosundaki farklı emailleri listeleyiniz
select distinct email from employees

--2-employees tablosundaki ilk 5 Kaydı görüntüleyin
select * from employees limit 5

--3-employees tablosundaki 6. kayıttan itibaren 5 Kaydı  görüntüleyin
select * from employees offset 5 limit 5

--4-employees tablosundaki son 3 Kaydı(id ye göre) görüntüleyin
select * from employees order by id desc limit 3

--5-employees tablosundaki departmanı 'IT' Olan Çalışanları görüntüleyin
select * from employees where department='IT'

--NOT:SQL DECLARATİVE (BEYANSAL) bir sorgulama dilidir. Where komutu bir true-false döndüren bir döngü ile çalışır
--Her satırda şartı arar. şayet şartımız gerçekleşiyorsa true döner ve sonuca eklenir.

--6-employees tablosundaki yaşı 30 dan Büyük Olan Çalışanları görüntüleyin
select * from employees where age>30

--7-employees tablosundaki yaşı 30 dan küçük veya şehri 'Roma' olan çalışanları görüntüleyin
select * from employees where age<30 or city='Rome'

--8-employees tablosundaki departmanı 'Sales' ve yaşı 30 dan küçük çalışanları görüntüleyin
select * from employees where age<30 and department='Sales'

--9-employees tablosundaki departmanı 'Sales','HR' veya 'IT' olan çalışanları görüntüleyin
select * from employees where  department in ('Sales','HR','IT')

--10-employees tablosundaki departmanı 'Sales','HR' ve 'Finance' olmayan çalışanları görüntüleyin
select * from employees where  department not in ('Sales','HR','Finance')

--11-employees tablosundaki  departmanı 'Sales','HR' veya 'IT' olan çalışanların isim, yaş, departmanlarını yaşlarına göre sıralayarak görüntüleyin
select name, age, department  from employees where  department in ('Sales','HR','IT') order by age asc

--12-a-employees tablosundaki yaşı 25 ve 30 arasında olan çalışanların isim ve yaşlarını görüntüleyin
select name, age  from employees where age between 25 and 30

--12-b-employees tablosundaki yaşı 25 den küçük  veya 30 dan büyük  olan çalışanların isim ve yaşlarını görüntüleyin
select name, age  from employees where age< 25 or age>30
--veya
select name, age  from employees where age not between 25 and 30

--13-employees tablosundaki  email alanı 'mail.com' ile biten çalışanların isim ve emaillerini isme göre artan görüntüleyin
select name, email  from employees where email LIKE '%mail.com' order by name

--14-a-employees tablosundaki  ismi 'an' hecesini içeren çalışanların isimlerini (büyük-küçük harf farketmeksizin) görüntüleyin
select name  from employees where email ILIKE '%an%'

--14-b-employees tablosundaki  isminin 2. harfi 'a' ve 3. harfi 'n' harfi olan çalışanların isimlerini (büyük-küçük harf farketmeksizin) görüntüleyin
select name  from employees where email ILIKE '_an%'

--15-employees tablosundaki yaşları 30 dan büyük olan tüm çalışanları siliniz
delete from employees where age>30

--16-employees tablosundaki "Moscow" şehrindeki tüm çalışanları siliniz
delete from employees where city='Moscow'

--17-employees tablosundaki e-posta adresi "john" ile başlayan tüm çalışanları siliniz
delete from employees where email LIKE 'john%'


--18-employees tablosundaki departmanının 2 .harfi 'R' olan tüm çalışanları siliniz
delete from employees where department LIKE '_R%'


--19-employees tablosundaki tüm çalışanları siliniz
truncate table employees; --Truncate :DDL komutudur.Önce tabloyu siler. sonra iskeleti yeniden kurar. where kullanılmaz.
--veya
delete from employees; -- Delete from: DML komutudur. teker teker siler. where ile şartlıişlem yapılabilir.

select * from teachers

--20-teachers/books tablosundaki tüm kayıtlarını boşaltınız
truncate table teachers;


--Truncate :DDL komutudur.Önce tabloyu siler. sonra iskeleti yeniden kurar. where kullanılmaz.
--Delete from: DML komutudur. teker teker siler. where ile şartlıişlem yapılabilir.

--21-tabloyu oluşturup, kayıtları ekleyin.
CREATE TABLE personal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    city VARCHAR(50),
    email VARCHAR(100),
    salary NUMERIC(10, 2),
    department VARCHAR(50)
);

INSERT INTO personal (name, age, city, email, salary, department) VALUES
('John Doe', 25, 'New York', 'john.doe@example.com', 60000, 'IT'),
('Jane Smith', 30, 'London', 'jane.smith@example.com', 75000, 'Finance'),
('Michael Brown', 28, 'Paris', 'michael.brown@example.com', 50000, 'HR'),
('Emily Johnson', 22, 'Berlin', 'emily.johnson@example.com', 45000, 'Marketing'),
('David Lee', 35, 'Tokyo', 'david.lee@example.com', 85000, 'IT'),
('Maria Garcia', 27, 'Moscow', 'maria.garcia@example.com', 55000, 'Sales'),
('Christopher Martinez', 29, 'Sydney', 'christopher.martinez@example.com', 65000, 'Finance'),
('Sarah Wilson', 26, 'Tokyo', 'sarah.wilson@example.com', 48000, 'HR'),
('James Taylor', 31, 'London', 'james.taylor@example.com', 70000, 'IT'),
('Jennifer Adams', 33, 'New York', 'jennifer.adams@example.com', 72000, 'Marketing'),
('Maria Darlin', 26, 'Moscow', 'maria.darlin@example.com', 55000, 'Sales'),
('Rod Johnson', 28, 'Berlin', 'rod.johnson@example.com', 45000, 'Marketing');

select * from personal

--22-Tüm çalışanların toplam maaşını bulunuz
select sum(salary) as toplam_maas from personal

--23-Tüm çalışanların ortalama maaşını bulunuz (virgülden sonra 2 haneli)
select ROUND(AVG(salary),2) as ort_maas from personal

--24-IT departmanında en yüksek maaşı bulunuz
select max(salary) as max_maas from personal where department='IT'

--25-New York, Berlin veya Tokyoda çalışanların sayısını bulunuz
select count(id) as top_sayi from personal where city in('New York','Berlin','Tokyo')

--26-a-Tüm çalışanların adlarını büyük harfle görüntüleyiniz.
select upper(name) from personal

--26-b-Tüm çalışanların adlarının ilk harfi büyük harfle görüntüleyiniz.
select initcap(name) from personal

--27-İsim ve şehir alanlarını aynı sütunda listeleyiniz.
select concat(name,' from ',city) as name_and_city from personal

--28-E-posta adreslerinde '@example.com' alan Adını '@company.com' ile değiştirerek görüntüleyiniz.
SELECT REPLACE(email, '@example.com', '@company.com') AS updt_email FROM personal;


--29-Her departmandaki ortalama maaşı görüntüleyiniz.
select department, avg(salary) from personal group by department 


--30- ortalama maaşı 60,000 in üzerindeki departmanları görüntüleyiniz.
select department, avg(salary) from personal group by department having AVG(SALARY)>60000; 

--31- yaşı 30 dan küçük olan çalışanların ortalama maaşı 60,000 in üzerindeki departmanlarını görüntüleyiniz.
select department, avg(salary) from personal where age<30 group by department having AVG(SALARY)>60000; 

--32- John Doe adlı çalışanın maaşını 65000 olarak güncelleyin.
update personal set salary=65000  where name='John Doe'











