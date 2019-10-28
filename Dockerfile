FROM alpine/base
RUN apk update \
    && apk upgrade \
    && apk add haproxy
CMD ["/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
