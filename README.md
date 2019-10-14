#### References

  - [sebimoe/linux-config](https://github.com/sebimoe/linux-config)


# sebimoe/oh-my-ubuntu

Ubuntu docker image for interactive use. 

 - configures oh-my-zsh on first start
 - has accidental termination prevention


## purpose

This image is intended to be used as an interactive virtual environment, potentially used with long-running background services.


## usage


### start a new container

    docker run -it --name myubuntu -v /docker/myubuntu:/data sebimoe/oh-my-ubuntu

The image will perform package installation and configuration on the first run.

Volume specified with `-v` is completely optional, it affords persistent and host-shared data store.


### detach from the container

press ^P^Q


### attach to the container 

    docker attach myubuntu


### start a new shell in the container

    docker exec -it myubuntu zsh


### shut down the container from inside

    touch /shutdown.flag && exit  # in main shell (docker attach)
    

## contents


### oh-my-zsh

This image uses [ubuntu-setup.sh](https://github.com/sebimoe/linux-config/blob/master/ubuntu-setup.sh) script from [sebimoe/linux-config](https://github.com/sebimoe/linux-config) to set up the distribution on first run. See [sebimoe/linux-config](https://github.com/sebimoe/linux-config) for more info.


### accidental shutdown prevention

The image runs the main shell process within a loop, which will respawn the shell unless a `/shutdown.flag` file is present, in which case it will also be removed.


## contributions

I would be very happy to integrate improvements and extensions into this repository, please create a PR or contact me.
