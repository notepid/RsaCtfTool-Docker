FROM alpine:latest
RUN apk update && \
    apk add --no-cache \ 
    gmp-dev mpfr-dev mpc1-dev python3 python3-dev py3-pip gcc musl-dev
WORKDIR /opt
RUN wget -q https://github.com/Ganapati/RsaCtfTool/archive/master.zip && \
    unzip master.zip && rm -f master.zip && \
    cd RsaCtfTool-master && \
    pip3 install -r "requirements.txt" --no-cache-dir
WORKDIR /data
ENTRYPOINT ["/opt/RsaCtfTool-master/RsaCtfTool.py"]
