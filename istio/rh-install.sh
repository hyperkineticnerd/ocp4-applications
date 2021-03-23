#!/usr/bin/bash

declare ISTIO_VERSION=1.8.2
declare TARGET_ARCH=x86_64

# Download Istio
curl -L https://istio.io/downloadIstio | sh -

# Enable containers running
oc adm policy add-scc-to-group anyuid system:serviceaccounts:istio-system

# Install Istio using the OpenShift profile
./istio-${ISTIO_VERSION}/bin/istioctl install --set profile=openshift

# Expose OpenShift route for the ingress gateway
oc -n istio-system expose svc/istio-ingressgateway --port=http2

