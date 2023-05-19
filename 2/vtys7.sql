create table sube 
 ( 
 sube_id int primary key identity(1,1) , 
 sube_isim nvarchar(50) not null, 
 sube_adres nvarchar(255) not null, 
 ) 

 create table calisan
 ( 
   calisan_id int primary key identity(1,1), 
   calisan_isim nvarchar(50) not null, 
   calisan_soyisim nvarchar(50) not null, 
   calisan_maas money not null, 
   calisan_adres nvarchar(255) not null,
   calisan_gorev datetime not null,
   sube int foreign key References sube(sube_id),
 )


 create table yonetici
 ( 
   yonetici_id int foreign key References calisan(calisan_id), 
   sube int foreign key References sube(sube_id),
 )


  create table pantolon
 ( 
  pantolon_id int primary key identity(1,1), 
 )

  create table fabrika 
( 
 fabrika_id int primary key identity(1,1) not null,
 fabrika_adres nvarchar(255) not null,
 sube int foreign key References sube(sube_id),
 pantolon int foreign key References pantolon(pantolon_id),
 ) 


  create table musteri
 ( 
   musteri_id int primary key identity(1,1), 
   musteri_adres nvarchar(255) not null, 
  
 )


  create table siparis
 ( 
   siparis_id int primary key identity(1,1) ,
   musteri int foreign key References musteri(musteri_id),
   pantolon int foreign key References pantolon(pantolon_id),

   )


  create table stok
 ( 
   stok_id int foreign key References pantolon(pantolon_id),
   stok_gram int not null, 
   stok_adet int not null,

 )

  create table urun_recete
 ( 
   recete_id int foreign key References pantolon(pantolon_id),
   birim_hammadde nvarchar(50) not null, 
 
 )


 