This directory contains the a simple springboot  Restful-app

To build :

# TODO: I have to check the tests to see why it is failing..
cd restful-app
mvn clean install -DskipTests

# To build the Docker image
docker build -t probaln/bookapp:v1 .

#login to docker.io before push
docker push probaln/bookapp:v1

# Build the test docker image
docker build -t probaln/test-bookapp:v1 -f Dockerfile-test . 
docker push probaln/test-bookapp:v1

#Deploy to Kubernetes cluster - this can be done by ArgoCD - but I am doing this manually
cd manifest
kubectl apply -f deployment.yaml

# create the service
kubectl apply -f service.yaml

# Setup the port-forward and show that the service is up and running
kubectl -n probal port-forward services/bookapp-service 80:8080
# Now environment is setup with the Application and TestSuite

