FROM google/cloud-sdk:472.0.0-alpine

ARG KUSTOMIZE_VERSION=v3.8.1

LABEL maintainer "Wahyu Muqsita Wardana <wahyu.muqsita@gmail.com>"

RUN apk add --update --no-cache python3 git openssh-client
RUN gcloud components install gke-gcloud-auth-plugin kubectl

ARG KUSTOMIZE_VERSION=v3.8.8
RUN curl -sLO https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
    tar xvzf kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
    mv kustomize /usr/bin/kustomize && \
    chmod +x /usr/bin/kustomize && \
    rm kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz