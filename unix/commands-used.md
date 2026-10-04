# Unix Commands Used

These commands are being practiced through an Ubuntu Server shell accessed with PuTTY.

| Command | Purpose |
|---|---|
| `whoami` | Show the current logged-in user |
| `hostname` | Show the server/computer name |
| `hostname -I` | Show assigned IP address(es) on Linux |
| `pwd` | Print the current working directory |
| `ls` | List files and directories |
| `ls -lh` | List files with long details and human-readable sizes |
| `mkdir NAME` | Create a directory |
| `cd NAME` | Change directory |
| `touch FILE` | Create an empty file |
| `cp SOURCE DEST` | Copy a file or directory |
| `mv SOURCE DEST` | Move or rename a file |
| `wc -l FILE` | Count lines in a file |
| `head -5 FILE` | Show the first five lines |
| `tail -5 FILE` | Show the last five lines |
| `less -S FILE` | Browse a large file without wrapping long lines |
| `free -h` | Show memory usage in human-readable form |
| `df -h` | Show filesystem disk usage in human-readable form |

## Current Practice Workspace

```text
/home/ashley/data_practice/
├── raw/
├── backup/
└── processed/
```

## Validation Example

```bash
wc -l raw/ecommerce_sales_customer_analytics_150k.csv
```

Observed result:

```text
138117
```

Because the file contains a header row, the expected number of data records is one less than the total line count if every record occupies exactly one physical line.
