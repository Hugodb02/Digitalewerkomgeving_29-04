pause
docker build . -t image-opdracht
pause
docker container rm  container-opdracht
docker run -dt -p 81:80 --name container-opdracht image-opdracht
pause