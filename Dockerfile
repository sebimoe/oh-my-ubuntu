FROM ubuntu

RUN apt update && \
    apt install -y git && \
    mkdir ~/setup && \
    (cd ~/setup/ && git clone https://github.com/sebimoe/linux-config.git linux-config) && \
    (cd ~/setup/linux-config/ && ./ubuntu-setup.sh)

CMD ["zsh"]
