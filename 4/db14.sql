/*product_master tablosu �zerinde product_view isminde bir view olu�turunuz ve 
s�tun isimlerini pro_no, desc, profit, Unit_measure, qty olacak �ekilde s�ras�yla 
de�i�tiriniz*/
create view product_view(pro_no, decs, profit, Unit_measure, qty, reoder_lvlnumber, sell_price, cost_price)
as
select product_no, descripion, profit_percent, unit_measure, qty_on_hand, reoder_lvlnumber, sell_price, cost_price
from product_master;