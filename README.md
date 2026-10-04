# Data Analyst Practice Workflow

A hands-on portfolio project documenting an end-to-end data analyst workflow using **Unix/Linux, PuTTY/SSH, SQL, Oracle-focused SQL practice, CSV validation, and Excel**.

## Project Goal

Build practical experience with the kinds of tasks commonly performed in an entry-level data analyst role:

- Navigate and manage files on a Unix/Linux server
- Inspect and validate large CSV files from the command line
- Preserve raw data and organize backup/processed outputs
- Load flat-file data into relational tables
- Query, join, extract, and validate data with SQL
- Practice Oracle-specific SQL and introductory PL/SQL
- Reconcile source-file counts with database counts
- Analyze and summarize results in Excel
- Document the workflow in a reproducible, professional format

## Practice Dataset

The project uses a **public e-commerce dataset** downloaded for training purposes. The main CSV is approximately **47 MB** and contains **138,117 total lines**, including the header row.

Raw datasets are intentionally excluded from this repository. This repository contains only documentation, queries, selected outputs, and project artifacts.

## Workflow

```text
Public CSV data
      ↓
Unix/Linux inspection and file management
      ↓
Source-data validation
      ↓
Relational database load
      ↓
SQL queries, joins, and validation
      ↓
Oracle-specific SQL / PL/SQL practice
      ↓
Excel analysis and reporting
```

## Current Progress

### Completed
- Configured SSH access to an Ubuntu Server VM through PuTTY
- Created a structured data workspace using `raw`, `backup`, and `processed` directories
- Transferred a large public CSV into the Linux environment
- Practiced Unix file operations including `cp`, `mv`, `mkdir`, and `cd`
- Validated the source file using `wc -l`
- Inspected beginning and ending records using `head` and `tail`
- Checked server memory and disk space using `free -h` and `df -h`

### In Progress
- Oracle-compatible practice environment
- CSV-to-table loading
- SQL row-count validation
- SQL joins and data-quality checks
- Oracle-specific SQL functions and PL/SQL
- Excel analysis and final reporting

## Repository Structure

```text
docs/       Project log and documentation
unix/       Unix commands and workflow notes
sql/        SQL validation, joins, and Oracle practice
excel/      Excel analysis notes and reporting artifacts
```

## Data Privacy

This project uses only public practice data and a personal training environment. No employer, client, proprietary, credential, or confidential data is included.
