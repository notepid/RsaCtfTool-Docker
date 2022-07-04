FROM python:3.8.13-slim-bullseye
RUN apt update && \
    apt-get update && apt-get install -y \
    wget unzip build-essential libgmp-dev libmpfr-dev libmpc-dev musl-dev libssl-dev libffi-dev
WORKDIR /opt
RUN wget -q https://github.com/Ganapati/RsaCtfTool/archive/master.zip && \
    unzip master.zip && rm -f master.zip && \
    cd RsaCtfTool-master && \
    pip3 install -r "requirements.txt" --no-cache-dir\
    --ignore-installed
WORKDIR /data
ENTRYPOINT ["/opt/RsaCtfTool-master/RsaCtfTool.py"]
