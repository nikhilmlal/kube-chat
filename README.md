# Application Deployment in Kubernetes

## Overview
This project is a hands-on initiative to learn and implement application development and deployment in Kubernetes using industry-standard tools.

## Tech Stack
- **Frontend**: React
- **Backend**: Spring Boot
- **Infrastructure**: Kubernetes, Terraform
- **CI/CD**: GitHub Actions, ArgoCD or Jenkins
- **Version Control**: GitHub

## Project Structure
```
📦 project-repo
├── frontend  # React application
├── backend   # Spring Boot application
├── infra     # Terraform scripts for infrastructure
├── ci-cd     # GitHub Actions/Jenkins pipelines
└── README.md
```

## Objectives
- Build a full-stack application using React and Spring Boot
- Deploy the application in a Kubernetes cluster
- Implement a CI/CD pipeline for automated deployment
- Use Terraform for infrastructure provisioning

## Getting Started
### Prerequisites
- Docker & Kubernetes (Minikube/K3s or a managed service like EKS/GKE/AKS)
- Node.js & npm (for frontend development)
- Java & Maven (for backend development)
- Terraform (for infrastructure as code)

### Setup
#### Clone the Repository
```sh
git clone https://github.com/your-org/project-repo.git
cd project-repo
```

#### Running the Backend
```sh
cd backend
mvn spring-boot:run
```

#### Running the Frontend
```sh
cd frontend
npm install
npm start
```

#### Deploying to Kubernetes
```sh
kubectl apply -f infra/k8s-manifests/
```

## CI/CD Pipeline
The pipeline includes:
- **Build & Test**: Runs unit tests for frontend and backend
- **Dockerization**: Builds and pushes images to a container registry
- **Deployment**: Deploys the latest version to Kubernetes using ArgoCD or Helm

## Contributing
1. Fork the repo
2. Create a feature branch
3. Commit changes
4. Submit a pull request

## License
MIT License
