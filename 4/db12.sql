/*salesman_master tablosu üzerinde tgt_to_get deðeri 200 den büyük olanlar için 
bir view oluþturunuz.*/
create view iki_yuzden_buyuk
as
select salesman_no, sal_name, address, city, pincode, sal_amt, tgt_to_get, ytd_sales, remarks
from salesman_master 
where tgt_to_get > 200