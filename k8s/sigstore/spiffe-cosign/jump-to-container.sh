#!/bin/bash
set -e

kubectl exec -it $(kubectl get pods -o=jsonpath='{.items[0].metadata.name}' -l app=spiffe-cosign)  -- /bin/sh