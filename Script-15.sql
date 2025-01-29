create table books1(
	book_id serial,
	title varchar(80),
	author varchar(50),
	published_date date,
	genre varchar(20)

);

insert into books(book_id,title, author,published_date,genre) values
(100,'Savas ve Barıs','Lev Tolstoy', '1869-01-01', 'Roman'),
(101,'Bülbülü Öldürmek','Harper Lee', '1890-01-08', 'Hikaye'),
(102,'Yabancı','Albert Camus', '1929-08-01', 'Distopya');

select * from books1

insert into books1(title, author) values
('Suç ve ceza','Dostoyevski')

insert into books1(title, author,genre) values
('Martin Eden','Jack London', 'Roman')

create table ogrenciler(
student_id serial primary key,
first_name varchar(50) not null,
last_name varchar(30) not null,
date_of_birth date not null,
email varchar(50) not null unique,
phone_number varchar(15),
gender varchar(8) check(gender in('male','female'))
)

drop table ogrenciler

select * from students

select first_name, last_name from students

create table adres(
address_id serial primary key,
student_id integer not null unique,
city varchar(50),
country varchar(15),
foreing key(student_id) references students(student_id) 
);

select * from student_address

select * from teachers

create table teachers1(
	id serial primary key,
	name varchar(50),
	age integer default 0, --age eklenmez ise default olarak null değil 0 eklenecek
	email varchar(100)
)

drop table teachers1

--isim sırasına göre listele
select * from teachers order by name asc --yazmasakta default  olarak artan sıralardı azalan için -desc-
--yaşa göre azalan sırala
select * from teachers order by age desc
--önce emaile göre artan, sonra yaşa göre sırala BİRDEN FAZLA SIRALAMA PEŞPEŞE VERİLEBİLİR
select * from teachers order by email asc, age desc
--ismin uzunluğuna göre azalan şekilde sırala ve karakter sayısını ayrı tabloda göster
select *, length(name) as karakter_sayısı from teachers order by length(name) desc










