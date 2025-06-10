#!/bin/bash

# test_dashboard.sh - Simulates CPU load to test Netdata monitoring

echo "🚀 Generating load on the system..."

# Stress CPU using 'yes' command
yes > /dev/null &

# Capture PID to kill later
PID=$!

# Wait while load is applied
sleep 15

# Stop the load
kill $PID

echo "✅ Load test completed. Check your Netdata dashboard for spikes."
