FROM httpd:2.4-alpine
COPY index.html /usr/local/apache2/htdocs/

# Configure Apache to listen on $PORT env var (defaults to 8080)
RUN echo "Listen \${PORT:-8080}" >> /usr/local/apache2/conf/httpd.conf && \
    sed -i 's/Listen 80/#Listen 80/' /usr/local/apache2/conf/httpd.conf

# Expose static port for documentation
EXPOSE 8080

