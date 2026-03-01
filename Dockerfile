FROM nginx:alpine

# Static site
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
