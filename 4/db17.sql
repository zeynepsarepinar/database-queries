/*sipariþ tarihi 10 gün geçen sipariþleri müþteri isimleri ve ürün isimleri olarak 
listeleyen bir SQL sorgusu yazýnýz.*/

select name, descripion from sales_order
inner join client_master on client_master.client_no = sales_order.client_no
inner join sales_order_details on sales_order_details.s_order_no = sales_order.s_order_no
inner join product_master on product_master.product_no = sales_order_details.product_no
where datediff (day, s_order_date, dely_date) > 10;