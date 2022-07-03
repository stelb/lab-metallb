#!/bin/sh

VER="v0.12.1"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/${VER}/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/${VER}/manifests/metallb.yaml

kubectl apply -n metallb-system -f metallb-pool.yml

