FROM image-opdracht

RUN date -u > /buildtime.txt

FROM nginx
COPY html /usr/share/nginx/html