FROM nginx:latest
COPY ./onecenter-draft /onecenter-draft
COPY ./onecenter-draft.conf /etc/nginx/conf.d/
RUN chown nginx -R /onecenter-draft && \
    rm -rf /etc/nginx/conf.d/default.conf
