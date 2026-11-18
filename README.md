# Linux Log Archive Tool

A Bash-based Linux automation project that identifies old log files, compresses them into timestamped `.tar.gz` archives, and removes the original log files after successful archiving.

## Overview

Log files are essential for monitoring applications and troubleshooting system issues. However, they can consume significant disk space over time.

This project automates log management by identifying log files older than 7 days, creating compressed archives, and helping maintain a cleaner log directory.

## Features

- **Automated Log Generation:** Generates sample application, error, and access logs for testing.
- **Old Log Detection:** Uses `find` to identify `.log` files older than 7 days.
- **Log Archiving:** Uses `tar` and `gzip` to create compressed archives.
- **Timestamped Archives:** Generates uniquely named archives using the current date and time.
- **Disk Space Management:** Removes original log files after successful archiving.
- **Bash Automation:** Uses shell scripting to automate repetitive Linux administration tasks.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- `find`
- `tar`
- `gzip`
- Cron (for scheduled execution, if configured)

## Project Structure

```text
Log-Archive-Tool/
│
├── logs/
│   ├── application.log
│   ├── error.log
│   └── access.log
│
├── archive/
│
├── setup.sh
├── generate-logs.sh
├── find-old-logs.sh
├── archive.sh
├── README.md
└── .gitignore
```

## How It Works

1. Creates the required project directories.
2. Generates sample log entries.
3. Searches for log files older than 7 days.
4. Creates a timestamped compressed archive containing the identified files.
5. Removes the original log files only after successful archiving.

## How to Run

Clone the repository:

```bash
git clone https://github.com/Samthelcf/Log-Archive-Tool.git
```

Navigate into the project:

```bash
cd Log-Archive-Tool
```

Make the scripts executable:

```bash
chmod +x *.sh
```

Run the setup script if required:

```bash
./setup.sh
```

Generate sample logs:

```bash
./generate-logs.sh
```

Find old log files:

```bash
./find-old-logs.sh
```

Run the archiving script:

```bash
./archive.sh
```

## Learning Outcomes

Through this project, I practiced:

- Linux directory and file management.
- Bash scripting and command substitution.
- Using variables, conditions, and exit codes.
- Finding files based on modification time.
- Creating compressed archives with `tar`.
- Managing file paths and permissions.
- Automating repetitive system administration tasks.

## Author
**Samipya M. Acharya**

GitHub: [@Samthelcf](https://github.com/Samthelcf)

---

*This project was developed as a hands-on Linux and DevOps learning project.*
