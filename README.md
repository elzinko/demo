# spring boot docker hello-world demo
This is a 'hello world' webapp, made with spring boot and docker.

## Run app with docker
``` bash
docker build -t demo .
docker run -d --name demo -p 8080:8080 demo
docker tag demo:latest cd/demo:1.0
```
