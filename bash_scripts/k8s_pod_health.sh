#!/bin/bash

# Display all pods across all namespaces
echo "Checking Kubernetes Pods..."

kubectl get pods -A

# Add spacing to read better
echo ""

# Filter out healthy running pods to locate issues
echo "Failed Pods:"
kubectl get pods -A | grep -v Running
