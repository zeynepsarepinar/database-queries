/*sales_order tablosunu kullanarak g�nl�k sipari�leri listelemeye yarayan bir view 
olu�turunuz. (Bu view her �al��t�r�ld���nda sistem tarihini alarak o g�ne ili�kin 
sipari�leri listelemelidir.) */

create view gunluk_siparis
as
select *
from sales_order
where convert(date, s_order_date, 103) = convert(date, getdate(), 103);
