FROM ubuntu

COPY linux-config /root/linux-config

RUN /root/linux-config/ubuntu-setup.sh

CMD ["/usr/bin/zsh"]
