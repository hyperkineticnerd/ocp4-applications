#!/usr/bin/bash

# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nificlusters.yaml
# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nifiusers.yaml
# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nifiusergroups.yaml
# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nifidataflows.yaml
# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nifiparametercontexts.yaml
# kubectl apply -f https://raw.githubusercontent.com/Orange-OpenSource/nifikop/master/config/crd/bases/nifi.orange.com_nifiregistryclients.yaml

helm repo add orange-incubator https://orange-kubernetes-charts-incubator.storage.googleapis.com/

helm install nifikop \
    orange-incubator/nifikop \
    --replace \
    --namespace=nifi \
    --version 0.5.3 \
    --set image.tag=v0.5.3-release \
    --set resources.requests.memory=256Mi \
    --set resources.requests.cpu=250m \
    --set resources.limits.memory=256Mi \
    --set resources.limits.cpu=250m \
    --set securityContext={} \
    --set namespaces={"nifi"}
