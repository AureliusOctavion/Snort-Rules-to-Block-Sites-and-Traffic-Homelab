## **Snort Intrusion Detection & Custom Rules Homelab**

## 📌 **Overview**
This project demonstrates the setup and configuration of **Snort**, a powerful network intrusion detection system (NIDS) that analyzes packet traffic in real time. It covers the installation of Snort, writing custom rules, and detecting network attacks using the **pytbull-ng** testing framework.

## 🎯 **Goals**
By completing this project, you will:
- Deploy **Snort** to monitor network traffic.
- Utilize **pytbull-ng** to simulate network attacks.
- Write and configure **custom Snort rules** to detect and block malicious activity.

## 🛠 **Tools & Resources**
- [Snort](https://www.snort.org/) – Open-source NIDS
- [pytbull-ng](https://github.com/efigo/pytbull-ng) – Testing framework for simulating attacks
  
## 📝 **Project Breakdown**
### **1️⃣ Installing Snort & Configuring the Environment**
- Updated system packages
- Installed **Docker** and pulled `pytbull-ng` image
- Verified installation using `docker images`

### **2️⃣ Simulating Network Attacks**
- Used `pytbull-ng` to generate network attack traffic
- Monitored attack packets in real-time

### **3️⃣ Writing Custom Snort Rules**
- Created and configured Snort's rule directories
- Wrote an **ICMP detection rule** for Snort validation
- Implemented a **rule to detect HTTPS traffic to Google.com**
- Tested rules by executing Snort in detection mode

### **4️⃣ Blocking Network Traffic**
- Modified `local.rules` to detect Google traffic
- Configured `snort.lua` to enforce custom rules
- Verified rule execution by observing Snort alerts

## 🚀 **How to Run the Project**
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/snort-nids.git
   cd snort-nids
   ```
2. Install dependencies:
   ```bash
   sudo apt-get update
   sudo apt install docker.io
   ```
3. Pull `pytbull-ng` for attack simulation:
   ```bash
   sudo docker pull efigo/pytbull-ng:latest
   ```
4. Start Snort with the configured rule set:
   ```bash
   sudo snort -c /usr/local/etc/snort/snort.lua -i eth0 -A alert_fast -s 65535 -k none
   ```
5. Test detection by running:
   ```bash
   ping google.com
   ```

## ⚠ **Limitations & Future Improvements**
- The current rule detects HTTPS traffic but does not **actively block** it.
- Future improvements could include **packet dropping** using Snort in inline mode.

## 📖 **License**
This project is open-source and available under the [MIT License](LICENSE).
