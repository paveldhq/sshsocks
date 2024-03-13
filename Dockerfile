FROM alpine:latest

WORKDIR app

ADD scripts .

RUN apk update \
    && apk add \
      openssh-client \
      sshpass \
      ca-certificates \
#      bash \
    && chmod +x /app/*.sh

ENV SSH_HOST=""
ENV SSH_PORT=""
ENV SSH_USER=""
ENV SSH_PASS=""

EXPOSE 8080

CMD ["/app/entrypoint.sh"]