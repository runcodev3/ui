FROM ubuntu:22.04

RUN apt update && apt install -y curl unzip

# download xray
RUN curl -L https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -o xray.zip \
 && unzip xray.zip \
 && mv xray /usr/local/bin/xray \
 && chmod +x /usr/local/bin/xray

COPY config.json /config.json

CMD ["xray","run","-c","/config.json"]
