


```sh
docker volume create pgdata
docker run -e POSTGRES_PASSWORD=1 -p 5432:5432 -v pgdata:/var/lib/postgresql/data postgres:12-alpine
```