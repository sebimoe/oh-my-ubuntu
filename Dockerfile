FROM ubuntu

COPY linux-config /root/oh-my-ubuntu/linux-config
COPY startup-scripts /root/oh-my-ubuntu/startup-scripts

# The startup script will perform first-run configuration 
# and run a shell in a loop to prevent accidental shutdown of the container.

WORKDIR /root/

ENTRYPOINT ["/root/oh-my-ubuntu/startup-scripts/startup"]
