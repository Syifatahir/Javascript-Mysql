use pegawai;

create table asn_audit(
id int auto_increment primary key,
action varchar(20),
nip char(18),
nama varchar(100),
id_hobi int,
tgl datetime);

create trigger after_nip_ditambah
after insert on asn
for each row
insert into asn_audit
set action = 'Tambah',
nip = new.nip,
nama = new.nama,
id_hobby = new.id_hobby,
tgl = now();

insert into asn values
('1234567832320', 'Rose', 1);

drop trigger after_nip_ditambah;