#oc create cm user-ca-bundle --from-file=ca-bundle.crt=/tmp/ipa.ca.cert -n openshift-config
kubectl --namespace gitlab-runners create secret generic gitlab-ca-cert --from-file=tls.crt=ipa.ca.cert


