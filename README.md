# Dockerfile for Google Cloud SDK with kubectl and kustomize

This Dockerfile sets up a lightweight container with the Google Cloud SDK, kubectl, and kustomize installed. It can be useful for automating Google Cloud and Kubernetes tasks within a containerized environment.

## Base Image

This Dockerfile is based on `google/cloud-sdk:472.0.0-alpine`, which provides a minimal Alpine Linux environment with the Google Cloud SDK pre-installed.

## Included Tools

- **kubectl**: The Kubernetes command-line tool, used for interacting with Kubernetes clusters.
- **kustomize**: A tool for customizing Kubernetes configurations. This Dockerfile installs version `v3.8.1` of kustomize.
- **gcloud**: The Google Cloud command-line tool, used for managing Google Cloud Platform resources.

## Maintainer

This Dockerfile is maintained by Wahyu Muqsita Wardana <wahyu.muqsita@gmail.com>.

## Building the Image

To build the Docker image locally, run:

```
docker build -t my-gcloud-image .
```

## Running the Container

To run a container based on this image interactively, execute:

```
docker run -it --rm my-gcloud-image /bin/bash
```

This will start a bash session within the container where you can use the installed tools.

## Example Usage

Once inside the container, you can use the installed tools as follows:

- Authenticate with Google Cloud:

```
gcloud auth login
```

- Set your default Google Cloud project:

```
gcloud config set project [PROJECT_ID]
```

- Interact with Kubernetes clusters using kubectl:

```
kubectl get pods
```

- Customize Kubernetes configurations using kustomize:

```
kustomize build ./path/to/kustomization