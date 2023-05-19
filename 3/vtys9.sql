create table birimler
(
birim_id int primary key not null,
birim_ad char(25) not null,
)

create table calisanlar
(
calisan_id int primary key not null,
ad char(25) null,
soyad char(25) null,
maas int null,
katilmaTarihi datetime null,
calisan_birim_id int foreign key references birimler(birim_id),
)

create table ikramiye
(
ikramiye_ucret int null,
ikramiye_tarih datetime null,
ikramiye_calisan_id int foreign key references calisanlar(calisan_id)
)

create table unvan
(
unvan_calisan char(25) null,
unvan_tarih datetime null,
unvan_calisan_id int foreign key references calisanlar(calisan_id)
)
