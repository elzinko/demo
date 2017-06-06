mvn package
docker build -t demo .
docker tag demo:latest 518620812774.dkr.ecr.eu-west-1.amazonaws.com/demo:1.0
aws ecr get-login --region eu-west-1 | sh
docker push 518620812774.dkr.ecr.eu-west-1.amazonaws.com/demo:1.0
echo "build java + build image + tag image to 1.0 + push image"
echo "Now you can do a rancher rolling update"
