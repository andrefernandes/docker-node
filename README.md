docker-node
===========

Base CentOS 7 + NodeJS

This is a plain CentOS-based image for NodeJS
development.

### Useful scripts

* **build.sh** : builds the image locally (docker build)
* **runbash.sh** : convenient way to run commands on a new
container (fast-food, auto-destroy) or even to just
open a bash shell to play.

#### Some nice tests:

Open bash:

    ./runbash.sh
    bash-4.2# echo Wheeee

Show npm version:

    ./runbash.sh npm -v
    1.4.23

