/*sales_order tablosunu kullanarak günlük sipariþleri listelemeye yarayan bir view 
oluþturunuz. (Bu view her çalýþtýrýldýðýnda sistem tarihini alarak o güne iliþkin 
sipariþleri listelemelidir.) */

create view gunluk_siparis
as
select *
from sales_order
where convert(date, s_order_date, 103) = convert(date, getdate(), 103);
