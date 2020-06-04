#!/bin/bash

# Add missing label for node selector.
kubectl label node kind-control-plane 'kubernetes.io/role'='master'