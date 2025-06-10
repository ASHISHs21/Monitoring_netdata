#!/bin/bash

# setup.sh - Installs Netdata monitoring agent

echo "🔧 Installing Netdata..."

# Download and run Netdata static install script
bash <(curl -Ss https://my-netdata.io/kickstart-static64.sh) --dont-wait

# Enable charts.d plugin
sudo sed -i 's/# charts.d = yes/charts.d = yes/' /etc/netdata/netdata.conf
sudo sed -i 's/# example=yes/example=yes/' /etc/netdata/charts.d.conf

# Create a custom chart script
cat << 'EOF' | sudo tee /usr/lib/netdata/charts.d/example.chart.sh > /dev/null
#!/bin/bash
example_update_every=5
example_priority=90000
example_get() {
  echo "BEGIN example.simple_chart"
  echo "SET value = $((RANDOM % 100))"
  echo "END"
  return 0
}
example_check() {
  return 0
}
EOF

# Set permissions
sudo chmod +x /usr/lib/netdata/charts.d/example.chart.sh

# Restart Netdata
echo "✅ Restarting Netdata..."
sudo systemctl restart netdata

echo "✅ Netdata installation and configuration completed."
echo "🌐 Open in browser: http://$(hostname -I | awk '{print $1}'):19999"
