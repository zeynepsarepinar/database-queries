/*Her hangi bir tablo olu�turunuz. Olu�turmu� oldu�unuz tablo i�in indeks yap�s� 
kullanarak en az iki sorgu �al��t�r�p g�steriniz*/
create table books2 (
    book_id int primary key,
    book_name varchar(50) not null,
    book_author varchar(50),
    book_publisher varchar(100) unique,
    book_page int,
);

