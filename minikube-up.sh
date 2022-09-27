#!/bin/bash

CLUSTER_NAME=${CLUSTER_NAME:-demo-cluster}

set -ex

minikube -p ${CLUSTER_NAME} start --kubernetes-version=1.24.6
