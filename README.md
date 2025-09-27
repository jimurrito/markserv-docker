# markserv-docker

Custom "Dockerized" Markserv container. Uses `Debian:Bookworm-slim` as a source image.

Source repo [Markserv](https://github.com/markserv/markserv)

> Supports AMD64 and ARM/AARCH64 based CPU Architecture

[Docker Hub](https://hub.docker.com/r/jimurrito/markserv)
[Github](https://github.com/jimurrito/markserv-docker)

## Setup

### Docker CLI

```bash
docker run -d -p 8642:8642 -p 35729:35729 -v /path/to/your/files:/app jimurrito/markserv:latest
```

### Docker Compose

```yaml
version: "3.8"

services:
  markserv:
    image: jimurrito/markserv:latest
    ports:
      - "8642:8642"
      - "35729:35729"
    volumes:
      - /path/to/your/files:/app
```

## Auto open firefox window on boot

```bash
docker run -d -p 8642:8642 -p 35729:35729 -v "$PWD":/app jimurrito:markserv:latest
firefox "http://localhost:8642"
```
