FROM 

USER root

COPY content/ /opt/app-root/src
COPY nginx.conf /etc/opt/rh/rh-nginx112/nginx

RUN chmod -R a+rwx /opt/app-root/src && \
    chown -R 1000:0 /opt/app-root/src && \
    chmod -R a+rwx /etc/opt/rh/rh-nginx112/nginx && \
    chown -R 1000:0 /etc/opt/rh/rh-nginx112/nginx

USER 1001

CMD /usr/libexec/s2i/run
