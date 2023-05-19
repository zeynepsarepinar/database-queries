select ad, soyad, unvan_calisan from calisanlar 
inner join unvan
on calisan_id = unvan_calisan_id 
where unvan_calisan in ('Yönetici', 'Müdür')