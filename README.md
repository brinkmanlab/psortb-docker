# psortb-docker
Docker build environment for PSORTb

## Quick Start
```bash
    $ git clone https://github.com/lairdm/psortb-docker.git && cd psortb-docker
    $ make build
    $ make run
```

Then point your browser at http://localhost/ to start PSORTing (or whatever host your Docker runs on).

## More words

The full list of available commands:

```
     make build        - Build image lairdm/psortb
     make push         - Push lairdm/psortb to public docker repo
     make run          - Run psortb container
     make start        - Start the EXISTING psortb container
     make stop         - Stop psortb container
     make restart      - Stop and start psortb container
     make remove       - Stop and remove psortb container
     make state        - View state psortb container
     make logs         - View logs in real time
```

The Docker image exposes port 80, if this doesn't work for you, rather than "make run" you can manually start up the image using a different port.

```bash
    $ docker run -d -p 8000:80 --restart=always --name psortb lairdm/psortb:1.0.0
```

