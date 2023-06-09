/*sales_order tablosunu kullanarak günlük siparişleri listelemeye yarayan bir view 
oluşturunuz. (Bu view her çalıştırıldığında sistem tarihini alarak o güne ilişkin 
siparişleri listelemelidir.) */

create view gunluk_siparis
as
select *
from sales_order
where convert(date, s_order_date, 103) = convert(date, getdate(), 103);
