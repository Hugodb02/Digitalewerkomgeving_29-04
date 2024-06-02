@echo off
docker build . -t image-opdracht
docker container rm container-opdracht -f
docker run -d -p 81:80 --name container-opdracht image-opdracht
