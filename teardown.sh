#!/bin/bash

CLUSTER_NAME=${CLUSTER_NAME:-demo-cluster}

set -x

kubectl config use-context ${CLUSTER_NAME}
kubectl delete deployment spiffe-cosign
kubectl delete namespace spire
kubectl delete clusterrole spire-server-trust-role spire-agent-cluster-role
kubectl delete clusterrolebinding spire-server-trust-role-binding spire-agent-cluster-role-binding
minikube -p ${CLUSTER_NAME} stop
minikube -p ${CLUSTER_NAME} delete --all
