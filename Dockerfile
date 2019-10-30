FROM alpine/base
RUN apk update \
    && apk upgrade \
    && apk add haproxy
ENTRYPOINT ["/usr/sbin/haproxy"]
CMD ["-f", "/etc/haproxy/haproxy.cfg"]
