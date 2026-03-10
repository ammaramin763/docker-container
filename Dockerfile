FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
RUN echo "server { listen ${PORT:-8080}; root /usr/share/nginx/html; }" > /etc/nginx/conf.d/default.conf
EXPOSE 8080

