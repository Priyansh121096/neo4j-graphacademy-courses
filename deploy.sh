docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 715633473519.dkr.ecr.us-east-1.amazonaws.com
skaffold build -t latest
kubectl rollout restart deployment/graphacademy -n graphacademy-prod