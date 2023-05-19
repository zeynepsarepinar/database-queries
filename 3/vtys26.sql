select ad, soyad, sum(ikramiye_ucret) as 'Toplam Ýkramiye' from calisanlar
inner join ikramiye on ikramiye_calisan_id = calisan_id where ikramiye_tarih
between '2016-02-20' and '2016-06-11' group by ad, soyad, ikramiye_calisan_id;