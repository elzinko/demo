docker build -t demo:latest .
docker run -d --name demo -p 8080:8080 demo:latest
