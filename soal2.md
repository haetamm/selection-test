## Soal :
<img src="file/soal2.png" alt="Logo" width="100%" height="auto"/>

## Jawaban :
```sql
SELECT 
    kode_barang, 
    stok_akhir
FROM histori_stok_barang
WHERE kode_stok IN (
    SELECT MAX(kode_stok)
    FROM histori_stok_barang
    GROUP BY kode_barang
)
ORDER BY kode_barang;
```