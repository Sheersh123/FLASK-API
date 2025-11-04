# FLASK-API
Flask + Nginx Microservice Architecture (Docker Compose & Swarm)
This project demonstrates a scalable microservice architecture with a Python Flask API backend and an Nginx reverse proxy frontend. The setup supports both Docker Compose for local development and Docker Swarm for production-style orchestration.

🏗 Architecture Overview
text
+---------------------+       Reverse Proxy        +----------------------+
|   Client Browser    |  <======================>  |      Nginx (frontend)|
+---------------------+                            +----------------------+
                                                          |
                                                          | Proxy (/api)
                                                          v
                                               +------------------------+
                                               |   Flask API (backend)  |
                                               +------------------------+
                                               
Frontend (Nginx): Listens for client traffic, serves a static page at /, proxies /api requests.

Backend (Flask): Handles JSON API endpoints (/, /api).

Orchestration:

Docker Compose for local

Docker Swarm (stack.yml) for scalable, production-like deployment

📁 Files
app.py: Flask API code

requirements.txt: Backend dependencies

Dockerfile: Backend container definition

Docker-compose.yml: Services for backend & frontend

stack.yml: Swarm manifest with deploy specs

nginx.conf: Nginx reverse proxy config

🚀 Quick Start
Local (Docker Compose)
bash
docker compose up --build -d
# Flask: http://localhost:5001/
# Nginx: http://localhost:5002/ (proxies /api to Flask)
Swarm Deployment
bash
docker swarm init
docker stack deploy -c stack.yml mystack
Backend scales with deploy.replicas, Nginx stays single instance

🔄 How It Works
Nginx reverse proxies /api requests to Flask backend (port 5000)

Other requests (/) show Nginx’s welcome page

Swarm files support scaling backend for high availability

🛠 Tech Stack
Python Flask

Nginx (Alpine)

Docker / Docker Compose / Swarm

