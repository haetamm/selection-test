## Soal :
<img src="file/soal2.png" alt="Logo" width="100%" height="auto"/>

## Jawaban :

#### JOIN adalah query yang digunakan untuk menggabungkan beberapa tabel.
#### Contoh:


```sql
-- daftar nama pelanggan beserta tanggal pesanannya 
SELECT 
    c.customer,
    o.order_date
FROM customer c 
LEFT JOIN `order` o 
ON c.customer_id = o.customer_id;

-- daftar pelanggan yang belum pernah melakukan pemesanan.
SELECT
    c.customer
FROM customer c 
LEFT JOIN `order` o 
ON c.customer_id = o.customer_id
GROUP BY o.customer_id
HAVING (o.customer_id IS NULL)

-- daftar pelanggan, alamat, dan jumlah pesanan masing-masing pelanggan.
SELECT
    c.customer,
    c.address,
    COUNT(o.order_id) AS jumlah_pesanan
FROM customer c 
LEFT JOIN `order` o 
ON c.customer_id = o.customer_id
GROUP BY o.customer_id
```