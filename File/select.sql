SELECT 
    KrsMahasiswa.nim,
    Mahasiswa.nama,
    Dosen.nama AS 'Dosen PA',
    Matakuliah.nama AS 'Mata Kuliah',
    MataKuliah.sks,
    Dosen.nama AS 'Dosen Pengampu'
FROM 
    KrsMahasiswa
JOIN 
    Mahasiswa ON KrsMahasiswa.nim = Mahasiswa.nim
JOIN 
    Matakuliah ON KrsMahasiswa.kd_mk = Matakuliah.kd_mk
JOIN 
    Dosen ON KrsMahasiswa.kd_ds = Dosen.kd_ds;
