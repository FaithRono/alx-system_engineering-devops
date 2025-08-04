# 0x09. Web Infrastructure Design

## 📌 Project Overview

This project focuses on understanding and designing different web infrastructure architectures commonly used in real-world production environments. It teaches fundamental concepts in DevOps and System Administration such as DNS, load balancing, firewalls, HTTPS, and monitoring. The goal is to learn how to scale, secure, and monitor web applications effectively, starting from a basic web stack to a fully distributed and secure infrastructure.

---

## 👤 Team

- Faith CHERONO
---
## 🔑 Key Concepts

- **Web Servers**: Serve static files and forward dynamic content requests.
- **Application Servers**: Handle logic and processing (Node.js, PHP, etc.).
- **Databases**: Store application data (MySQL used).
- **Load Balancers**: Distribute traffic for reliability and performance.
- **Firewalls (ufw)**: Restrict traffic to essential services only.
- **Monitoring Tools**: Track server health and uptime.
- **SSL Encryption**: Ensures encrypted and secure communication over HTTPS.

---

## ⚙️ Installation & Setup

> Note: These steps assume you're using Ubuntu 20.04 servers.

```bash
# Install Nginx on web servers
sudo apt update
sudo apt install nginx

# Install HAProxy on load balancer
sudo apt install haproxy

# Configure HAProxy (/etc/haproxy/haproxy.cfg)
# Add backend web servers to HAProxy config

# Install MySQL
sudo apt install mysql-server

# Secure MySQL
sudo mysql_secure_installation

# Install UFW and allow essential ports
sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx Full'
sudo ufw enable

# Setup SSL using Let's Encrypt
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx

# Install Monit for monitoring
sudo apt install monit
```

---
---

## 🚀 How It Works
- User Request → Hits HAProxy load balancer

- HAProxy → Forwards request to one of the available web servers

- Web Server → Forwards to application logic (API, backend)

- App Server → Queries or updates the database

- Database → Sends result back to app → web → client



## 🧠 Learning Objectives

By the end of this project, I am expected to be able to:

- Draw a diagram covering the web stack used in my SysAdmin/DevOps projects.
- Explain each component's role in a web infrastructure.
- Discuss system redundancy, SPOF (Single Point of Failure), and scaling strategies.
- Understand and describe key acronyms: LAMP, SPOF, QPS.
- Justify infrastructure choices and discuss potential issues.
- Demonstrate web security and monitoring practices.

---

## 📁 Project Structure

Each task is organized in the `0x09-web_infrastructure_design` directory of the repository [alx-system_engineering-devops](https://github.com/YourGitHubUsername/alx-system_engineering-devops).

---

## ✅ Tasks

### 0. Simple Web Stack

Design a basic one-server web infrastructure stack that hosts `www.foobar.com`.

- **Components Used:**
  - 1 Server (IP: 8.8.8.8)
  - Nginx (Web Server)
  - Application Server
  - MySQL Database
  - DNS `A` record (www.foobar.com → 8.8.8.8)

- **Key Concepts:**
  - Roles of domain names, servers, web servers, and application servers.
  - DNS record types and HTTP communication flow.
  - Limitations: SPOF, lack of scalability, downtime during deployments.

- **Diagram:**  
  📎 [View Simple Web Stack Diagram](https://docs.google.com/document/d/1cCbR_UPVVjIwuatH3AQZgwSZoWH6jFbFew7UL3yrsaU/edit?usp=sharing)  
  📁 [Screenshots Folder](https://drive.google.com/drive/folders/1-iRfFOMO0bJ74D4T-DAawBI2Mfg8GpIj)

📄 File: `0-simple_web_stack`

---

### 1. Distributed Web Infrastructure

Upgrade the system to a 3-server architecture with redundancy and load balancing.

- **Components Added:**
  - 1 Additional Server
  - Load Balancer (HAProxy)
  - App & Web Server split roles
  - Master-Slave (Primary-Replica) MySQL setup

- **Key Concepts:**
  - Load balancing algorithms (Round Robin, Least Connections)
  - Active-Active vs Active-Passive architecture
  - Replication between Primary and Replica databases
  - Security risks due to lack of firewall/HTTPS
  - SPOF in DB, LB, and Monitoring gaps

- **Diagram:**  
  📎 [View Distributed Web Infrastructure Diagram](https://docs.google.com/document/d/1UXwWXXZLslwofwNbROC5HJ8jX1B4b1pn9XyBo6onbfw/edit?usp=sharing)  
  📁 [Screenshots Folder](https://drive.google.com/drive/folders/1-iRfFOMO0bJ74D4T-DAawBI2Mfg8GpIj)

📄 File: `1-distributed_web_infrastructure`

---

### 2. Secured and Monitored Web Infrastructure

Add HTTPS, firewalls, and monitoring tools for a robust and secure architecture.

- **Components Added:**
  - 3 Firewalls
  - SSL Certificate (HTTPS support)
  - Monitoring Clients (e.g., Sumologic)

- **Key Concepts:**
  - SSL encryption & HTTPS benefits
  - Role of firewalls in protecting each layer
  - Monitoring QPS, CPU usage, response time
  - Terminating SSL at load balancer vs backend
  - Limitations of single write-only DB and uniform component servers

- **Diagram:**  
  📎 [View Secured Web Infrastructure Diagram](https://docs.google.com/document/d/1bFUObMxYXrvdNbE1hwYWTLjiCK5be79ec6QP6Y-pxWg/edit?usp=sharing)  
  📁 [Screenshots Folder](https://drive.google.com/drive/folders/1-iRfFOMO0bJ74D4T-DAawBI2Mfg8GpIj)

📄 File: `2-secured_and_monitored_web_infrastructure`

---

### 3. Scale Up (Advanced)

Design a more scalable and modular architecture with component-level server separation.

- **Components Added:**
  - 1 Additional Server
  - Load Balancer Cluster (HAProxy)
  - Separated Servers: Web, App, and DB on individual machines

- **Key Concepts:**
  - Horizontal scaling
  - Load balancing clustering
  - Decoupling services for better performance and scalability

- **Diagram:**  
  📎 [View Scale Up Diagram](https://docs.google.com/document/d/1ViRcrfnEqdzojRH0d_zHgT4YMw4WiTENkrRmEvDDJFY/edit?usp=sharing)  
  📁 [Screenshots Folder](https://drive.google.com/drive/folders/1-iRfFOMO0bJ74D4T-DAawBI2Mfg8GpIj)

📄 File: `3-scale_up`

---

## 🛡️ Plagiarism Disclaimer

> All solutions and diagrams are independently designed to reflect a full understanding of the project's objectives. Plagiarism of any form is strictly prohibited and against ALX program rules.

---

## 📚 Resources Used

- ALX Intranet Concept Pages:
  - [DNS](https://intranet.alxswe.com/concepts/12)
  - [Load Balancer](https://intranet.alxswe.com/concepts/46)
  - [HTTPS](https://intranet.alxswe.com/concepts/64)
  - [Firewall](https://intranet.alxswe.com/concepts/71)
  - [Monitoring](https://intranet.alxswe.com/concepts/54)
- Google Docs & Drive for diagrams and planning

---

## 📌 GitHub Repository

🔗 [alx-system_engineering-devops](https://github.com/YourGitHubUsername/alx-system_engineering-devops)

---

## 💬 Contact

**Faith Cherono**  
📧 faithrono132@gmail.com  
🌐 [LinkedIn](https://www.linkedin.com/in/faith-cherono/) | [GitHub](https://github.com/FaithRono)

---
