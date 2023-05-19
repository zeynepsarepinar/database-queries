/*product_master tablosu üzerinde product_view isminde bir view oluþturunuz ve 
sütun isimlerini pro_no, desc, profit, Unit_measure, qty olacak þekilde sýrasýyla 
deðiþtiriniz*/
create view product_view(pro_no, decs, profit, Unit_measure, qty, reoder_lvlnumber, sell_price, cost_price)
as
select product_no, descripion, profit_percent, unit_measure, qty_on_hand, reoder_lvlnumber, sell_price, cost_price
from product_master;