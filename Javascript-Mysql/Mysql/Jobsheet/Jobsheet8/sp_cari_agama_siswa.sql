use sekolah;

DELIMITER $$
CREATE PROCEDURE sp_cari_agama(
	in m_nama_agama varchar(11)
    )
    
begin
	select Nama, Jumlah
    from vw_jml_agama_siswa
    where Nama = m_nama_agama;
end $$
DELIMITER ;