helm repo add hashicorp https://helm.releases.hashicorp.com

helm install vault hashicorp/vault \
    --set "global.openshift=true" \
    --set "server.dev.enabled=true"

