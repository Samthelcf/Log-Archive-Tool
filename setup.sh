#!/bin/bash
mkdir -p "$HOME/project/log-archive-tool"
cd "$HOME/project/log-archive-tool" || exit 1
mkdir -p logs archive
touch logs/application.log
touch logs/error.log
touch logs/access.log
echo "Log Archive Tool Setup Completed!"
ls -R
