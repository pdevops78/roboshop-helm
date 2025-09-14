# roboshop-helm
helm repo add elastic https://helm.elastic.co && helm repo update
helm install elastic-operator-crds elastic/eck-operator-crds
helm install es-kb-quickstart elastic/eck-stack -n elastic-stack --create-namespace
helm install elastic-operator elastic/eck-operator -n elastic-system --create-namespace

