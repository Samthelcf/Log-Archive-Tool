
#!/bin/bash

lv="$HOME/project/log-archive-tool/logs"
av="$HOME/project/log-archive-tool/archive"

# Generate archive filenam
 ARCHIVE_NAME="logs-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
# Create a unique temporary file
 LIST_FILE=$(mktemp)
# Automatically remove temporary file when script exits
 trap 'rm -f "$LIST_FILE"' EXIT
 # Find old log files
 find "$lv" -maxdepth 1 -type f -name "*.log" -mtime +7 -printf '%f\0' > "$LIST_FILE"
#Check whether old logs exist
if [ ! -s "$LIST_FILE" ]; then
     echo "No old log files found!"
         exit 0
fi
# Create compressed archiv
      if tar -czf "$av/$ARCHIVE_NAME" \
             -C "$lv" --null -T "$LIST_FILE"; then
                 echo "Logs archived successfully!"
                 echo "Archive: $ARCHIVE_NAME"
# Delete original files after successful archiving
xargs -0 -r -a "$LIST_FILE" rm --
 echo "Original log files removed successfully!"
 else
                 echo "Archiving failed! Original files preserved."
                 exit 1
fi

echo "Log archiving process completed!"

