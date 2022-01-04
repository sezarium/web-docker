FROM nginx
ENV NGINX_HOST  %%NGINX_HOST%%
RUN apt-get update && \
    apt-get install -y certbot python3-certbot-nginx && \
    apt-get autoclean
COPY custom-entrypoint.sh /
RUN chmod +x "/custom-entrypoint.sh"
ENTRYPOINT ["/custom-entrypoint.sh"]
