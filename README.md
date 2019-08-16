# Jenkins with docker

This repository contains a jenkins with preinstalled docker-cli.


```
docker build . -t jenkins-withdocker
docker run -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock jenkins-withdocker
```

There are some use cases to need this environments
- We can build software inside a container without preinstalled environment such as [nodejs](https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker) or [golang](https://medium.com/faun/docker-multi-stage-build-for-go-a6821eabde1a).
- We need to push image to [registry](https://docs.docker.com/registry/).
- We control docker swarm cluster to run production application after building application.