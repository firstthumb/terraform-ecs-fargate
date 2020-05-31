# Fargate with Terraform

Example repository for deploying boilerplate rest service to ECS cluster 

```
    # Create repository
    aws ecr create-repository --repository-name go-rest

    # It will print repo path
    XXXXXXXX.dkr.ecr.XXXXXX.amazonaws.com/go-rest

    # Docker login
    aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin XXXXXXXX.dkr.ecr.XXXXXX.amazonaws.com

    # Push your image to ECR
    docker push XXXXXXXX.dkr.ecr.XXXXXX.amazonaws.com/go-rest

    terraform init

    terraform apply
```