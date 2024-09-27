## Soal :
<img src="file/soal1.png" alt="Logo" width="100%" height="auto"/>

## Jawaban :
```sql
SELECT 
    b.kodebrg, 
    b.namabrg, 
    SUM(j.jumlah)
FROM barang b 
LEFT JOIN jual j 
ON b.kodebrg = j.kodebrg 
GROUP BY b.kodebrg;
```