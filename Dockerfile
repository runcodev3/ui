FROM ubuntu:22.04

RUN apt update && apt install -y curl

RUN bash <(curl -Ls https://raw.githubusercontent.com/MHSanaei/3x-ui/master/install.sh)

CMD ["x-ui"]
