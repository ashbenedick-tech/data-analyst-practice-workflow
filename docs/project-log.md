# Project Log

## 2026-10-04 — Environment Setup and Initial Data Validation

### Objective
Create a realistic analyst practice environment using PuTTY, Ubuntu Server, Unix commands, and a large public CSV dataset.

### Work Completed
- Connected from Windows to an Ubuntu Server virtual machine using PuTTY over SSH.
- Confirmed the active user, hostname, and working directory.
- Created a dedicated practice workspace at `/home/ashley/data_practice`.
- Created `raw`, `backup`, and `processed` directories to separate source, safety-copy, and output data.
- Transferred a public e-commerce CSV into the Ubuntu environment.
- Preserved one copy in `raw` and one in `backup`.
- Verified the source file contained **138,117 total lines** using `wc -l`.
- Inspected the first and last records with `head` and `tail`.
- Checked VM resources with `free -h` and `df -h`.

### Skills Practiced
- SSH / PuTTY
- Unix file navigation
- File organization
- Copying and moving files
- Large-file inspection
- Row-count validation
- Basic server resource checks

### Analyst Relevance
This mirrors the first stages of a production data workflow: receive a file, preserve the source, inspect its structure, validate the record count, and prepare it for loading and downstream analysis.

### Next Steps
- Continue Unix validation with `less`, `grep`, `cut`, `sort`, `uniq`, and `awk`.
- Create relational tables from the public CSV files.
- Compare source-file row counts with SQL `COUNT(*)` results.
- Practice joins, NULL handling, aggregates, and QA checks.
- Add Oracle-specific SQL and introductory PL/SQL exercises.
- Analyze selected outputs in Excel.


## 2026-10-05 — Oracle Environment and CSV DDL Preview

### Objective
Connect to a real Oracle database from the Ubuntu/PuTTY environment and inspect how SQLcl would define the Kaggle CSV as an Oracle table before loading data.

### Work Completed
- Ran Oracle AI Database Free in Docker on Windows using WSL 2.
- Confirmed Oracle listener availability on port `1521`.
- Verified the Ubuntu VM could reach the Windows-hosted Oracle listener with `nc -vz 10.0.2.2 1521`.
- Installed Oracle SQLcl 26.3.0 on Ubuntu with Java 21.
- Connected from the PuTTY/Ubuntu shell to Oracle `FREEPDB1` as the `ANALYST_PRACTICE` schema.
- Used SQLcl `LOAD ... SHOW_DDL` to inspect the proposed `ECOMMERCE_SALES` table definition without loading the CSV.
- SQLcl detected **46 columns** and inferred Oracle data types including `VARCHAR2`, `DATE`, and `NUMBER`.
- SQLcl detected the source date format as `RRRR-MM-DD`.
- Reviewed inferred numeric precision/scale before creating the production-style practice table.

### Skills Practiced
- Oracle database connectivity
- SQLcl
- Oracle schemas and tablespaces
- DDL inspection
- CSV schema inference
- Data type validation
- Pre-load quality assurance

### Analyst Relevance
This exercise demonstrates a core data-loading control: inspect and validate the proposed table structure before inserting source records. It reduces the risk of loading data into incorrect data types or losing meaningful formatting such as postal-code leading zeros.


## 2026-10-08 — Create and Load ECOMMERCE_SALES

### Objective
Create a cleaned Oracle table from the validated CSV schema and load the source data into the existing table.

### Work Completed
- Manually created the `ECOMMERCE_SALES` table in the `ANALYST_PRACTICE` schema.
- Used business-appropriate numeric definitions such as `NUMBER(12,2)` for financial fields after validating source ranges and floating-point artifacts.
- Kept `PROFIT_MARGIN_PERCENTAGE` as `NUMBER(6,2)` after confirming a source range of -59.55 to 77.59 with no values over two decimal places.
- Configured SQLcl load date handling for the source date format.
- Loaded the public CSV into the existing Oracle table using SQLcl.
- SQLcl processed **138,116 rows**, reported **0 rows in error**, and committed through row **138,116**.

### Analyst Relevance
This exercise mirrors a controlled data-load workflow: validate source structure, create an appropriate target schema, load the file, review load diagnostics, and reconcile database row counts back to the source.
