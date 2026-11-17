#!/bin/bash
lv="$HOME/project/log-archive-tool/logs"
echo "Searching for log files older than 7 days"
find "$lv" -type f -name "*.log" -mtime +7
echo "Search completed"
