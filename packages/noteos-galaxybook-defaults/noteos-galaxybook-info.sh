#!/usr/bin/env bash
set -euo pipefail

echo "== NoteOs Galaxy Book diagnostic =="
echo
hostnamectl || true
echo
lspci -nn || true
echo
lsusb || true
echo
cat /sys/power/mem_sleep 2>/dev/null || true
echo
find /sys/class/power_supply -maxdepth 2 -type f -name charge_control_end_threshold -print -exec cat {} \; 2>/dev/null || true
