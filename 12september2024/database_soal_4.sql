CREATE TABLE pelanggan (
    kode VARCHAR(11) PRIMARY KEY, 
    nama VARCHAR(255), 
    alamat VARCHAR(255)
);

CREATE TABLE barang (
    kode VARCHAR(255) PRIMARY KEY, 
    nama VARCHAR(255), 
    harga double(255, 0)
);

CREATE TABLE transaksi (
    kode VARCHAR(255) PRIMARY KEY, 
    tanggal DATE, 
    kode_pelanggan VARCHAR(11), 
    kode_barang VARCHAR(255), 
    jumlah_barang double(255, 0), 
    FOREIGN KEY (kode_pelanggan) REFERENCES pelanggan (kode), 
    FOREIGN KEY (kode_barang) REFERENCES barang (kode)
);

INSERT INTO barang VALUES ('B1', 'Baju', 12000), ('B2', 'Celana', 10000), ('B3', 'Sepatu', 30000);
INSERT INTO pelanggan VALUES ('P1', 'Yogi', 'JAKARTA'), ('P2', 'Anggi', 'BANDUNG'), ('P3', 'Rahma', 'BANDUNG');
INSERT INTO transaksi VALUES
    ('TRX001', '2019-10-01', 'P1', 'B1', 3),
    ('TRX002', '2019-10-02', 'P2', 'B2', 2),
    ('TRX003', '2019-10-08', 'P2', 'B1', 5),
    ('TRX004', '2019-10-10', 'P1', 'B1', 1),
    ('TRX005', '2019-10-17', 'P3', 'B2', 2),
    ('TRX006', '2019-10-17', 'P2', 'B3', 1),
    ('TRX007', '2019-10-18', 'P3', 'B1', 4),
    ('TRX008', '2019-10-18', 'P2', 'B2', 2);

