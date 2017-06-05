aws ecr get-login --region eu-west-1 | sh
docker build -t demo .
docker tag demo:latest 518620812774.dkr.ecr.eu-west-1.amazonaws.com/demo:latest
docker push 518620812774.dkr.ecr.eu-west-1.amazonaws.com/demo:latest
