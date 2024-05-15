FROM image-opdracht as builder

RUN date -u > /buildtime.txt

FROM nginx

COPY --from=builder /buildtime.txt /usr/share/nginx/html/buildtime.txt
COPY html /usr/share/nginx/html
