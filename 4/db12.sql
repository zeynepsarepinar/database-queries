/*salesman_master tablosu �zerinde tgt_to_get de�eri 200 den b�y�k olanlar i�in 
bir view olu�turunuz.*/
create view iki_yuzden_buyuk
as
select salesman_no, sal_name, address, city, pincode, sal_amt, tgt_to_get, ytd_sales, remarks
from salesman_master 
where tgt_to_get > 200