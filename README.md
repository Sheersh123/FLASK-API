# FLASK-API
🚀 Flask API with Nginx Reverse Proxy (Docker Compose)
A minimal, production-style setup showcasing a Python Flask backend and Nginx frontend using Docker Compose. Ideal for microservice starters, DevOps demos, and web API workflows.

🗂 Project Structure
app.py: Flask backend app (/ & /api endpoints)

Docker-compose.yml: Compose manifest for Nginx + Flask orchestration

nginx.conf: Nginx config for API proxy

requirements.txt: Python library dependencies

⚡ Quick Start
1. Clone & Setup
bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME
2. Build & Run (with Docker Compose)
bash
docker compose up --build -d
3. Test the Endpoints
Backend (Flask):

http://localhost:5001/
→ { "msg": "Hello from backend" }



Frontend (Nginx reverse-proxy):

http://localhost:5002/api
→ { "msg": "Kudos you made it !!!" }

http://localhost:5002/
→ Nginx default welcome page

4. Tear Down
bash
docker compose down
🛠 Tech Stack
Python Flask

Nginx (Alpine)

Docker + Docker Compose

📁 File Tree
text
├── app.py
├── requirements.txt
├── Docker-compose.yml
├── nginx.conf
📝 Notes
Make sure to name Flask route handler functions uniquely (home(), api())!

Double-check environment variables: set FLASK_APP=app.py in Dockerfile.

Nginx proxies /api to Flask at port 5000.

✨ Contributing
Pull requests welcome! Fork, improve docs, add debugging tips, or extend endpoints.