#!/usr/bin/bash

declare openshift_storage_class=ovirt-csi-sc

helm repo add bitnami https://charts.bitnami.com/bitnami

helm install zookeeper bitnami/zookeeper \
    --set resources.requests.memory=256Mi \
    --set resources.requests.cpu=250m \
    --set resources.limits.memory=256Mi \
    --set resources.limits.cpu=250m \
    --set global.storageClass=${openshift_storage_class} \
    --set auth.enabled=false \
    --set allowAnonymousLogin=true \
    --set securityContext.enabled=false \
    --set replicaCount=3 

    #--namespace nifi \
    #--set networkPolicy.enabled=true \
