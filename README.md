# Jenkins with docker

This repository contains a jenkins with preinstalled docker-cli.


```
docker build . -t jenkins-withdocker
docker run -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock jenkins-withdocker
```

docker supports various environment for building and deploying software such nodejs and golang