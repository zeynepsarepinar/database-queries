select count (ad) as 'Hi� ikramiye Almayanlar' from calisanlar 
left outer join ikramiye on ikramiye_calisan_id = calisan_id where ikramiye_calisan_id is null;
