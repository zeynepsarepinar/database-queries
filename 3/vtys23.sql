select ad, soyad, calisan_birim_id, unvan_calisan, ikramiye_ucret
from calisanlar 
inner join ikramiye
on calisan_id = ikramiye_calisan_id
inner join unvan 
on calisan_id = unvan_calisan_id