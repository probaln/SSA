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
