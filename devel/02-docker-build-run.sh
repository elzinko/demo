docker build -t demo:1.0 .
docker run -d --name demo -p 8080:8080 demo:1.0
