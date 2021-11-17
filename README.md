# Zenjob Python App to upload file to S3 [WIP]

Zenjob Assignment

## Python Script

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install boto3.

```bash
pip install boto3
```

## How to run Dockerfile

```bash
     
     docker build -t pythonapp:1.0.1 .
     docker run pythonapp:1.0.1 -e qa [Local Testing]

```

## Kubectl cmds

```bash

    kubectl apply -f namespaces.yaml
    kubectl get ns
    kubectl apply -f cron-k8s-qa.yaml -n qa
    kubectl apply -f cron-k8s-staging.yaml -n staging
    kubectl get cronjob zenjob-pythonapp -n

```
After a few seconds, you can find the pods that the last scheduled job created and view the standard output of one of the pods:
```bash

    kubectl logs <pod_name> -n 

```

## Documentation Link
[Assignment Documentation](https://docs.google.com/document/d/1FNVQ3LjYD4ZDPBELyd3tdiguQBbl06A_yv0mtjML5s4/edit?usp=sharing)