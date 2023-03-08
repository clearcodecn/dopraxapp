FROM ubuntu

RUN apt-get update && apt-get install -y curl wget unzip &&  \
  wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
  unzip v2ray-linux-64.zip 

CMD ["./v2ray", "run", "-config", "config.json"]
