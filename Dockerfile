FROM ubuntu:16.04
MAINTAINER Greg Taylor <gtaylor@gc-taylor.com>

RUN apt-get update && apt-get dist-upgrade -y && \
    apt install -y python3 xz-utils && apt-get clean

WORKDIR /opt

ARG factorio_version
ENV VERSION $factorio_version

COPY entrypoint.sh gen_config.py factorio.crt /opt/

CMD ["./entrypoint.sh"]
