-- Data Analyst Practice Workflow
-- Validation queries will be expanded as CSV files are loaded into relational tables.

-- Example: validate the number of records loaded from a source file.
SELECT COUNT(*)
FROM customer_master;

-- Additional validation checks to add during the project:
-- 1. Duplicate key counts
-- 2. NULL counts in required fields
-- 3. Minimum/maximum dates
-- 4. Aggregate totals compared with source data
-- 5. Referential integrity checks between related tables
