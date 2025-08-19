# 🚀 CI/CD Pipeline with Docker & GitHub Actions  

This project demonstrates a **CI/CD pipeline** using **GitHub Actions** and **Docker**.  
The pipeline automatically builds, tests, and pushes a Docker image to **Docker Hub** whenever changes are pushed to the repository.  

---

## 📂 Project Structure
.
├── src/app.js          # Application source code

├── tests/app.test.js   # test source code

├── public/index.html   # Frontend entry point

├── server.js            # Express server entry point

├── package.json         # Node.js dependencies

├── Dockerfile          # Multi-stage Docker build

├── docker-compose.yml # Compose file for local multi-container setup

└── .github/workflows/ci-cd.yml   # GitHub Actions workflow

---

## ⚙️ Workflow (CI/CD)

1. **Trigger**  
   - Runs on `git push` to `main` branch.  

2. **Steps**  
   - Checkout repository  
   - Install dependencies  
   - Run tests (`npm test`)  
   - Build Docker image  
   - Push image to Docker Hub  

---

## 🐳 Docker Setup

### Build locally

docker build -t deepakkr545/ci-cd-docker-demo .


### Run container


docker run -p 3000:3000 deepakkr545/ci-cd-docker-demo


Now open [http://localhost:3000](http://localhost:3000) 🎉

### Pull from Docker Hub

docker pull deepakkr545/ci-cd-docker-demo:latest

Docker Hub Repository: [deepakkr545/ci-cd-docker-demo](https://hub.docker.com/r/deepakkr545/ci-cd-docker-demo)

---

## ✅ Deliverables

* **GitHub Repo:** [Project Repository](https://github.com/Deepakkr545/project-4-ci-cd-pipeline-docker-github-actions)
* **Docker Image:** [deepakkr545/ci-cd-docker-demo](https://hub.docker.com/r/deepakkr545/ci-cd-docker-demo)
* **CI/CD Results:** Available in the [Actions tab](https://github.com/your-username/project-4-ci-cd-pipeline-docker-github-actions/actions)
* **App Screenshot:** Running on `localhost:3000`

---

## 📸 Screenshots

* **CI/CD Workflow Run (GitHub Actions)**
* **Docker images, docker ps and docker logs commands results**
* **App running on `localhost:3000`**

---

## 👨‍💻 Author

**Deepak Kumar**
📌 Internship Project – CI/CD with Docker & GitHub Actions
