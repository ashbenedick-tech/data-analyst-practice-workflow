-- Data Analyst Practice Workflow
-- Validation queries for the e-commerce practice dataset.

-- Post-load row-count reconciliation.
-- Expected: 138,116 data rows. The source file contained 138,117 physical
-- lines including one header row.
SELECT COUNT(*) AS ecommerce_sales_row_count
FROM ecommerce_sales;

-- Check for missing order IDs.
SELECT COUNT(*) AS missing_order_ids
FROM ecommerce_sales
WHERE order_id IS NULL;

-- Check for duplicate order IDs.
SELECT order_id, COUNT(*) AS duplicate_count
FROM ecommerce_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Review date range after load.
SELECT MIN(order_date) AS earliest_order_date,
       MAX(order_date) AS latest_order_date
FROM ecommerce_sales;

-- Additional validation checks to add during the project:
-- 1. NULL counts in other required fields
-- 2. Financial aggregate reconciliation
-- 3. Valid categorical values
-- 4. Referential integrity checks after related tables are loaded
