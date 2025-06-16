# Monitoring_netdata
This project demonstrates how to install, configure, and test a basic system monitoring setup using [Netdata](https://www.netdata.cloud/). It also includes automation scripts to practice DevOps and CI/CD fundamentals.

https://roadmap.sh/projects/simple-monitoring-dashboard

📘 README.md
markdown
Copy
Edit
# 🖥️ Netdata System Monitoring - Beginner DevOps Project

This project demonstrates how to install, configure, and test a basic system monitoring setup using [Netdata](https://www.netdata.cloud/). It also includes automation scripts to practice DevOps and CI/CD fundamentals.

---

## 🎯 Project Goals

- Understand basic system monitoring
- Learn to use Netdata for real-time performance metrics
- Practice scripting and automation with bash
- Simulate system load and test dashboard responsiveness
- Clean up the system after testing

---

## 📁 Project Structure

| Script             | Description                                      |
|--------------------|--------------------------------------------------|
| `setup.sh`         | Installs Netdata, enables plugins, adds a custom chart |
| `test_dashboard.sh`| Generates CPU load to test monitoring visuals     |
| `cleanup.sh`       | Uninstalls Netdata and removes related files      |

---

## 🚀 Quick Start

### 1. Clone the Repo or Copy Files

git clone <your-repo-url>
cd <repo-folder>

2. Run the Setup Script:
chmod +x setup.sh
./setup.sh

After install, open the Netdata dashboard in your browser:
http://<your-server-ip>:19999

3. Run the Load Test:
chmod +x test_dashboard.sh
./test_dashboard.sh
Check your dashboard to see a spike in CPU usage or metric changes.

4. Cleanup When Done:
chmod +x cleanup.sh
./cleanup.sh
🛠️ Custom Chart Example
This project includes a custom chart (example.simple_chart) using the charts.d plugin. It outputs a random value every few seconds to demonstrate how to create custom visualizations in Netdata.

✅ Requirements
Linux (tested on Ubuntu/Debian)
Internet access to download Netdata
Bash


🧠 Learn More
Netdata Documentation
Netdata GitHub
Stress command

