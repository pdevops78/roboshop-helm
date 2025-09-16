# roboshop-helm
helm repo add elastic https://helm.elastic.co && helm repo update
kubectl apply -f https://download.elastic.co/downloads/eck/3.1.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/3.1.0/operator.yaml
helm install es-kb-quickstart elastic/eck-stack -n elastic-stack --create-namespace
kubectl get pvc






https://www.elastic.co/docs/deploy-manage/deploy/cloud-on-k8s/elasticsearch-deployment-quickstart
https://www.elastic.co/docs/deploy-manage/deploy/cloud-on-k8s/install-using-yaml-manifest-quickstart


elasticsearch-es-default-0
es-kb-quickstart-eck-kibana-kb-7de....
elastic-operator-0




kubectl get svc -A
kubectl get secrets -n elastic-stack
to get secrets : kubectl get secrets elasticsearch-es-elastic-user -n elastic-stack -o yaml | .data.elastic | base64decode}


minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Stopped
kubeconfig: Configured
podman:
