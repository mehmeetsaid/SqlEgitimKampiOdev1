Create database SqlEgitimKampiOdev
use SqlEgitimKampiOdev

create table books
(
book_id int primary key identity(1,1),
title nvarchar(50) not null,
author nvarchar(50) not null,
genre nvarchar(50),
price decimal(18,2) check(price>=0),
stock tinyint check(stock>0),
published_year smallint,
added_at date
)

insert into books (title,author,genre,price,stock,published_year,added_at) values
('Kayýp Zamanýn Ýzinde', 'M. Proust', 'roman', 129.90, 25, 1913, '2025-08-20'),
('Simyacý', 'P. Coelho', 'roman', 89.50, 40, 1988, '2025-08-20'),
('Sapiens', 'Y. N. Harari', 'tarih', 159.00, 18, 2011, '2025-08-25'),
('Ýnce Memed', 'Y. Kemal' , 'roman', 99.90, 12, 1955, '2025-08-22'),
('Körlük', 'J. Samarago', 'roman', 119.00, 7, 1995, '2025-08-28'),
('Dune', 'F. Herbert', 'bilim', 149.00, 30, 1965, '2025-09-01'),
('Hayvan Çiftliði', 'G. Orwell', 'roman', 79.90, 55, 1945, '2025-08-23'),
('1984', 'G. Orwell', 'roman', 99.00, 35, 1949, '2025-08-24'),
('Nutuk', 'M. K. Atatürk', 'tarih', 139.00, 20, 1927, '2025-08-27'),
('Küçük Prens', 'A. de Saint-Exupéry', 'çocuk', 69.90, 80, 1943, '2025-08-26'),
('Baþlangýç', 'D. Brown', 'roman', 109.00, 22, 2017, '2025-09-02'),
('Atomik Alýþkanlýklar', 'J. Clear', 'kiþisel geliþim', 129.00, 28, 2018, '2025-09-03'),
('Zamanýn Kýsa Tarihi', 'S. Hawking', 'bilim', 119.50, 16, 1988, '2025-08-29'),
('Þeker Portakalý', 'J. M. de Vasconcelos', 'roman', 84.90, 45, 1968, '2025-08-30'),
('Bir Ýdam Mahkûmunun Son Günü', 'V. Hugo', 'roman', 74.90, 26, 1829, '2025-08-31')

select title,author,price from books order by price asc
select * from books where genre='roman' order by title asc
select * from books where price between 80 and 120
select title,stock from books where stock < 20
select * from books where title like '%zaman%' -- Eðer title'daki collation kýsmýna 'SQL_Latin1_General_CP1_CS_AS' yazarsak büyük küçük harf duyarlý oluyor (Case Sensitive)
                                               -- Eðer title'daki collation kýsmýna 'SQL_Latin1_General_CP1_CI_AS' yazarsak büyük küçük harf duyarsýz oluyor (Case Insensitive)
select * from books where genre in ('roman','bilim')
select * from books where published_year>=2000 order by published_year desc
SELECT * from books where added_at >= DATEADD(DAY, -10, CAST(GETDATE() AS DATE));
select top 5 * from books order by price desc
select * from books where stock between 30 and 60 order by price asc