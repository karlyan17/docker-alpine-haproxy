FROM alpine/base
RUN apk update \
    && apk upgrade \
    && apk add haproxy \
CMD ["-f", "/etc/haproxy/haproxy.cfg"]
ENTRYPOINT /usr/sbin/haproxy
