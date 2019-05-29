# psortb-docker
Docker build environment for PSORTb

## Overview
PSORTb is a bioinformatics tool for predicting subcellular localization for a given set of protein sequences. The protein sequences used in the analysis must belong to one type of organism, classified by cell membrane type in order to more accurately predict subcellular localization. The supported organism types are:

   * Gram negative
   * Gram positive
   * Archaea
   * Gram negative without outer membrane
   * Gram positive with outer membrane
   
The current data downloaded into the Docker image is version 3.0.6.

## Quick Start
```bash
    $ git clone https://github.com/lairdm/psortb-docker.git && cd psortb-docker
    $ sudo docker build -r mylab/psortb:3.0.6 .
    $ sudo docker run -d -p 8000:80 --restart=always --name mylab/psortb:3.0.6
```

Then point your browser at http://localhost:8000 to start PSORTing.

A pre-built Docker image that this code builds is available at https://hub.docker.com/r/brinkmanlab/psortb (along with installation instructions).

## Access to Other PSORT Tools

PSORTb is offered as a web service to researchers at http://www.psort.org/psortb. This site has extensive documentation on the tool and methods.

PSORTb is also available for command line access at https://hub.docker.com/r/brinkmanlab/psortb_commandline. Alternatively the command line PSORTb tool can be built outside Docker by using instructions available on https://www.psort.org/downloads/index.html.

PSORTm (subcellular localization of Metagenomic sequences) can be found on Docker hub allowing both web service (https://hub.docker.com/r/brinkmanlab/psortm) and command line (https://hub.docker.com/r/brinkmanlab/psortm_commandline) access.

## Authors
The PSORTb and PSORTm tools listed here were developed by the Fiona Brinkman Laboratory at Simon Fraser University, Greater Vancouver, Canada.  Please contact us at psort-mail@sfu.ca.
