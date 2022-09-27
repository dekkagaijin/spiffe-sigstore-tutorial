#!/bin/bash
set -ex

kubectl create secret generic docker-config-json \
  --from-file=${HOME}/.docker/config.json