#!/bin/bash

set -e

echo "Creating directory structure..."

# Fișierele din root
touch README.md .gitignore .sops.yaml

# Structura de directoare
mkdir -p clusters/merox/flux-system
touch clusters/merox/flux-system/gotk-components.yaml
touch clusters/merox/flux-system/gotk-sync.yaml
touch clusters/merox/flux-system/kustomization.yaml
touch clusters/merox/infrastructure.yaml
touch clusters/merox/apps.yaml

mkdir -p infrastructure/base/namespaces
touch infrastructure/base/namespaces/cert-manager.yaml
touch infrastructure/base/namespaces/longhorn-system.yaml
touch infrastructure/base/namespaces/rancher-system.yaml
touch infrastructure/base/namespaces/kustomization.yaml
touch infrastructure/base/kustomization.yaml

mkdir -p infrastructure/sources
touch infrastructure/sources/cilium.yaml
touch infrastructure/sources/cert-manager.yaml
touch infrastructure/sources/longhorn.yaml
touch infrastructure/sources/rancher.yaml
touch infrastructure/sources/kustomization.yaml

mkdir -p infrastructure/configs/cilium
touch infrastructure/configs/cilium/loadbalancer-config.yaml
touch infrastructure/configs/cilium/ingress-config.yaml
touch infrastructure/configs/cilium/kustomization.yaml

mkdir -p infrastructure/configs/cert-manager/issuers
touch infrastructure/configs/cert-manager/issuers/cloudflare-api-token.sops.yaml
touch infrastructure/configs/cert-manager/issuers/letsencrypt-staging.yaml
touch infrastructure/configs/cert-manager/issuers/letsencrypt-production.yaml
touch infrastructure/configs/cert-manager/issuers/kustomization.yaml
touch infrastructure/configs/cert-manager/kustomization.yaml

mkdir -p infrastructure/configs/longhorn
touch infrastructure/configs/longhorn/values.yaml
touch infrastructure/configs/longhorn/kustomization.yaml

mkdir -p infrastructure/configs/rancher
touch infrastructure/configs/rancher/values.yaml
touch infrastructure/configs/rancher/kustomization.yaml

touch infrastructure/configs/kustomization.yaml
touch infrastructure/kustomization.yaml

mkdir -p apps/base/namespaces
touch apps/base/namespaces/apps.yaml
touch apps/base/namespaces/kustomization.yaml
touch apps/base/kustomization.yaml

mkdir -p apps/sources
touch apps/sources/homepage.yaml
touch apps/sources/kustomization.yaml

mkdir -p apps/configs/nginx
touch apps/configs/nginx/deployment.yaml
touch apps/configs/nginx/service.yaml
touch apps/configs/nginx/ingress.yaml
touch apps/configs/nginx/kustomization.yaml

mkdir -p apps/configs/homepage
touch apps/configs/homepage/release.yaml
touch apps/configs/homepage/values.yaml
touch apps/configs/homepage/ingress.yaml
touch apps/configs/homepage/kustomization.yaml

touch apps/configs/kustomization.yaml
touch apps/kustomization.yaml

echo "Directory structure created successfully!"