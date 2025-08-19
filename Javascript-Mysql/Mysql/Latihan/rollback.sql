use pegawai;

-- commit yang tidak bsa rollback
start transaction;
insert into hobby (id, nama_hobby)
values (5, 'Bersepeda');
commit;
rollback;

-- tanpa commit (mengulang, kalau sudah di commit tidak bisa diubah apapun)
start transaction;
insert into hobby (id, nama_hobby)
values (6, 'Menulis');
rollback;

select * from hobby;
