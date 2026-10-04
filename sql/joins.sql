-- Data Analyst Practice Workflow
-- Join examples will be adapted to the actual Kaggle table structure.

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id
FROM customer_master c
JOIN order_items o
    ON c.customer_id = o.customer_id;
