# Create the helm chart from the directory above
helm create restful-app-helm

# Modify the chart's values.yaml and templates.

# To check the manifest 
helm install restful-app-helm . --dry-run

# To install the manifests
helm install restful-app-helm . 

# To uninstall the manifest
helm uninstall restful-app-helm

# To update
helm upgrade restful-app-helm .

# Checkout http://argoproj.github.io/argo-cd/user-guide/commands/argocd and
# http://argoproj.github.io/argo-cd/user-guide/commands/argocd_app 

# Login to argocd command line
argocd login  <a6fb1cb20d4a94e7988f64de632fea02-1229217818.us-east-2.elb.amazonaws.com> --username <admin> --password <askme>

# Now create the app using CLI
argocd app create restful-app-helm --repo https://github.com/probaln/SSA.git --path argodemo/deploy/restful-app-helm --dest-namespace default --dest-server https://kubernetes.default.svc --helm-set replicaCount=2

# To override the values and namespace
argocd app create restful-app-helm --repo https://github.com/probaln/SSA.git --path argodemo/deploy/restful-app-helm --dest-namespace probal --dest-server https://kubernetes.default.svc --helm-set replicaCount=2 --helm-set service.type=LoadBalancer --helm-set service.port=8082

