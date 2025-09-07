#kubectl create secret  generic  vault-token --from-literal=token=hvs.T8WnPWmYmGZkPYlGAHXVmebk -n argocd
argocd login $(kubectl get ingress -A| grep argocd | awk '{print $4}') --username admin --password $(argocd admin initial-password -n argocd | head -1) --insecure --skip-test-tls --grpc-web
 for app in frontend catalogue cart user payment shipping; do
   argocd app create ${app} --repo https://github.com/pdevops78/roboshop-helm.git --path chart --upsert --dest-server https://kubernetes.default.svc --dest-namespace default --insecure  --grpc-web --values values/${app}.yaml
   argocd app sync ${app}
   done

