# Zenjob Python App to upload file to S3
### Python Scrpt

---

How to run Dockerfile:
* docker build -t pythonapp:1.0.1 .
* docker run pythonapp:1.0.1 -e qa  [Local Testing] 

Kubectl
* kubectl apply -f namespaces.yaml
* kubectl get ns
* kubectl apply -f cron-k8s-qa.yaml -n qa
* kubectl apply -f cron-k8s-staging.yaml -n staging
* kubectl get cronjob zenjob-pythonapp -n <env>

After a few seconds, you can find the pods that the last scheduled job created and view the standard output of one of the pods:
* kubectl logs <pod_name> -n <env>