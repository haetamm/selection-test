
### Jawaban :

#### DDL (Data Definition Language), kelompok query yang berkaitan dengan pembuatan struktur tabel dan database.
#### Contoh:

```sql 
-- membuat table customer
CREATE TABLE customer ( 
    customer_id SMALLINT PRIMARY KEY, 
    customer VARCHAR(50), 
    address VARCHAR(50)
)

-- mengganti nama tabel customer menjadi pelanggan
RENAME TABLE customer TO pelanggan; 

-- mengganti kolom customer menjadi pelanggan
ALTER TABLE pelanggan CHANGE customer pelanggan VARCHAR(30);
 
-- mengganti tipe data pada kolom customer_id menjadi TINYINT
ALTER TABLE pelanggan MODIFY customer_id TINYINT;

-- menambah kolom hobi setelah kolom address
ALTER TABLE pelanggan ADD hobi VARCHAR(10) AFTER address;

-- menghapus kolom hobi
ALTER TABLE pelanggan DROP hobi;

-- menghapus table pelanggan
DROP TABLE pelanggan;
```

#### DML (Data Manipulation Language) merupakan kelompok query yang berfungsi untuk memanipulasi data di tabel.
#### Contoh:
```sql
INSERT INTO customer VALUES 
    (1, "Rino", "Jakarta"),
    (2, "Hendy", "Bandung");

SELECT * FROM customer;

DELETE FROM customer WHERE customer_id = 1;

UPDATE customer SET customer = "Rani" WHERE id = 1;
```