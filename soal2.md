## Soal :
<img src="file/soal2.png" alt="Logo" width="100%" height="auto"/>

## Jawaban
```sql
SELECT 
    v1.id AS id,
    v1.name AS name,
    v2.name AS parent_name
FROM voucher v1
LEFT JOIN voucher v2
ON v1.parent_id = v2.id ORDER BY id;
```