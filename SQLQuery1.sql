drop database dbPawMate
create database dbPawMate

use dbPawMate

create table tblIlan(
id int not null identity primary key,
Tur varchar(50) not null,
Irk varchar(50) not null,
IlanBasligi varchar(50) not null,
Yas int not null,
Cinsiyet varchar(50) not null,
Konum varchar(100) not null,
Fotograf varchar(100) not null,
IlanAciklama varchar(500) not null,
IlanTarihi datetime not null
)

create table tblKullanici(
UserId int not null identity primary key,
kullaniciMail varchar(30) not null unique,
sifre varchar(50) not null
)

create table tblIletisim(
IletisimId int not null identity primary key,
gonderenAd varchar(40) not null,
gonderenMail varchar(50) not null,
gonderenMesaj varchar(300) not null
)

insert into tblKullanici(kullaniciMail,sifre) values ('kemal.hakan@hotmail.com','12345')
select * from tblKullanici
select * from tblIlan

insert into tblIletisim(gonderenAd,gonderenMail,gonderenMesaj) values ('Kemal AK','kemal.hakan@hotmail.com','Deneme mesaj�')
select * from tblIletisim
