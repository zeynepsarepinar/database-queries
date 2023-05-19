select distinct birim_ad, count (calisan_birim_id) as 'Toplam Çalýþan' from birimler
inner join calisanlar on birim_id = calisan_birim_id
group by birim_ad, calisan_birim_id having count (calisan_birim_id) > 2;
