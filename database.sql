-- CREATE DATABASE adins;

CREATE TABLE barang (
    kodebrg SMALLINT PRIMARY KEY,
    namabrg VARCHAR(30)
);

INSERT INTO barang VALUES 
    (1, "MEJA"),
    (2, "KURSI"),
    (3, "LAMPU");

CREATE TABLE jual (
    `kodebrg` SMALLINT,
    `jumlah` SMALLINT,
    FOREIGN KEY (`kodebrg`) REFERENCES `barang` (`kodebrg`)
);

INSERT INTO jual VALUES 
    (1, 2),
    (1, 3),
    (2, 4);


CREATE TABLE histori_stok_barang (
    kode_stok SMALLINT PRIMARY KEY,
    tanggal VARCHAR(10),
    kode_barang CHAR(1),
    stok_akhir SMALLINT
);

INSERT INTO histori_stok_barang VALUES
    (1, "01/01/09", "A", 2),
    (2, "02/01/09", "A", 5),
    (3, "02/01/09", "B", 1),
    (4, "03/01/09", "A", 3),
    (5, "03/01/09", "B", 3),
    (6, "04/01/09", "A", 5),
    (7, "04/01/09", "A", 4);