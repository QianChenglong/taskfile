ARG BASE

FROM ${BASE}

ARG A
ARG B

RUN echo $A

RUN echo $B

RUN echo "hosts: files dns" >> /etc/nsswitch.conf
RUN apk add --no-cache tzdata busybox-extras curl tcpdump bash ca-certificates bind-tools musl file
RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted add lrzsz

ENV TZ=Asia/Shanghai

ENTRYPOINT ["/bin/bash"]
