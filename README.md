# MyApp Kubernetes Deployment Manifests

This repository contains Kubernetes deployment manifests for MyApp and utility scripts for managing deployments through Argo CD.

## Structure

- `deployment/`: Kubernetes manifest files for deploying MyApp.
- `scripts/`: Contains utility scripts for Argo CD operations.

## Getting Started

### Prerequisites

- Install Argo CD CLI
- Access to Kubernetes cluster with Argo CD installed

### Setting Up Your Application

To set up and sync the application using Argo CD:

```bash
cd scripts/
./setup-and-sync.sh
