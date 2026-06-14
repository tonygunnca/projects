#!/usr/bin/env bash

# Display a header so output is easier to read
echo "===== SYSTEM HEALTH ====="

# Show the machine hostname
echo "Hostname: $(hostname)"

# Display how long the system has been running
echo ""
echo "Uptime:"
uptime

# Show available and used disk space
echo ""
echo "Disk Usage:"
df -h

# Display current memory usage in human-readable format
echo ""
echo "Memory Usage:"
free -h

# Show the top memory-consuming processes
echo ""
echo "Top 5 Memory Processes:"
ps aux --sort=-%mem | head -6 
