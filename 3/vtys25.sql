select birim_ad, ad, soyad, maas from birimler
inner join calisanlar
on birim_id = calisan_birim_id
where maas in (select max(maas) from calisanlar group by calisan_birim_id);