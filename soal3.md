### Jawaban 3 a.
```sql
SELECT
    order_date
FROM
    `order`
GROUP BY order_date
HAVING COUNT(*) = (
    SELECT MAX(count_date)
    FROM (
        SELECT COUNT(*) AS count_date FROM `order` GROUP BY order_date
    ) AS sub
)
```

### Jawaban 3 b.
```sql
SELECT
    order_date
FROM
    `order`
GROUP BY order_date
HAVING COUNT(*) = (
    SELECT MIN(count_date)
    FROM (
        SELECT COUNT(*) AS count_date FROM `order` GROUP BY order_date
    ) AS sub
)
```

### Jawaban 3 c.
```sql
SELECT
    c.*
FROM 
    customer c 
LEFT JOIN `order` o
ON c.customer_id = o.customer_id
GROUP BY o.customer_id
HAVING COUNT(*) = (
    SELECT MAX(count_id)
    FROM (
        SELECT 
            c.customer_id, 
            COUNT(o.customer_id) AS count_id 
        FROM customer c 
        RIGHT JOIN `order` o 
        ON c.customer_id = o.customer_id
        GROUP BY o.customer_id
    ) AS sub
) OR COUNT(*) = (
    SELECT MIN(count_id)
    FROM (
        SELECT 
            c.customer_id, 
            COUNT(o.customer_id) AS count_id 
        FROM customer c 
        RIGHT JOIN `order` o 
        ON c.customer_id = o.customer_id
        GROUP BY o.customer_id
    ) AS sub
)

```