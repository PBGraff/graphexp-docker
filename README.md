# graphexp-docker
Docker containers for graphexp standalone.

Built based off of `Dockerfile` from [joov](https://github.com/joov/gremlin-demo).
Uses the [graphexp](https://github.com/bricaud/graphexp) package by [Benjamin Ricaud](https://github.com/bricaud/) and its [bootstrap extension](https://github.com/erandal/graphexp) by [Armand Leopold](https://github.com/erandal).

## Running

The Docker containers can be built by running `build.sh`.
Alternatively, they can be downloaded from Docker Hub.

```
docker pull pgraff85/graphexp-original:1.0
docker run --rm -d -p 8001:80 --name=graphexp pgraff85/graphexp-original:1.0
```

```
docker pull pgraff85/graphexp-bootstrap:1.0
docker run --rm -d -p 8001:80 --name=graphexp pgraff85/graphexp-bootstrap:1.0
```

Then just go to `http://localhost:8001` in your browser to use.
This port can be made whatever port you like.

To stop the container, run `docker stop graphexp`.
