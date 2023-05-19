/*Her hangi bir tablo oluþturunuz. Oluþturmuþ olduðunuz tablo için indeks yapýsý 
kullanarak en az iki sorgu çalýþtýrýp gösteriniz*/
create table books2 (
    book_id int primary key,
    book_name varchar(50) not null,
    book_author varchar(50),
    book_publisher varchar(100) unique,
    book_page int,
);

