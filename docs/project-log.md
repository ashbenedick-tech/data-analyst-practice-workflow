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
