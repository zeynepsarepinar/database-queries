/*sipari� tarihi 10 g�n ge�en sipari�leri m��teri isimleri ve �r�n isimleri olarak 
listeleyen bir SQL sorgusu yaz�n�z.*/

select name, descripion from sales_order
inner join client_master on client_master.client_no = sales_order.client_no
inner join sales_order_details on sales_order_details.s_order_no = sales_order.s_order_no
inner join product_master on product_master.product_no = sales_order_details.product_no
where datediff (day, s_order_date, dely_date) > 10;