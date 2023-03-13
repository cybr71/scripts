#!/bin/sh

if [ -z "$1" ]; then
  echo "Please Use: $0 <namespace>"
  exit 1
fi

NAMESPACE=$1

kubectl get deployment -n $NAMESPACE -o=jsonpath='{.items[*].metadata.name}' > deployment-name

for deployment in `more deployment-name`
do
#echo "$deployment"
kubectl get deployment -n $NAMESPACE $deployment -o=jsonpath='{"Deployment: "}{.metadata.name}{" "}{"Resource_Limit: "}{.spec.template.spec.containers[*].resources.limits}{" "}{"Replica: "}{.spec.replicas}{"\n"}'
done
rm deployment-name
