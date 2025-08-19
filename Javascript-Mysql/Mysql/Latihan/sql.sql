create database pegawai;

use pegawai;

create table hobby(
id int primary key,
nama_hobby varchar(50) not null);

/* cara lain
create table hpbby(
id int,
nama_hobby varchar(50) not null,
primary key(id)); */

create table asn(
nip char(18) primary key,
nama varchar(100),
id_hobby int,
foreign key(id_hobby)
references hobby(id));

alter table asn change nama nama_lengkap varchar(100);

rename table asn to pns;

show databases;
show tables;

drop table pns;
drop database pegawai;

insert into hobby values
('1','Memasak'),
('2','Olahraga'),
('3','Menyanyi'),
('4','Membaca');

insert into asn values
('123456780', 'Rose', 1),
('234567899', 'Jenny', 2),
('345678917', 'Lisa', 3),
('567891235', 'Jisoo', 2);

select * from hobby;
select * from asn;

-- mengganti kolom
update asn set nama = 'Sunflower' where nip = '345678917';

-- hapus 1 data atau yang mau dhapus
delete from asn where nip = '345678917';

-- menampilkan hanya data yang dipilih
select nip, nama from asn where nip in ('123456780', '234567899');


