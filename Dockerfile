FROM registry.redhat.io/rhel8/nginx-116:1-20

USER root

COPY content/ /opt/app-root/src
COPY nginx.conf /etc/nginx

RUN chmod -R a+rwx /opt/app-root/src && \
    chown -R 1000:0 /opt/app-root/src && \
    chmod -R a+rwx /etc/nginx && \
    chown -R 1000:0 /etc/nginx

USER 1001

CMD /usr/libexec/s2i/run
