# docker-node-sonos-http-api

Docker wrapper for `node-sonos-http-api`

**Update source on sever**
```shell
ssh server "cd /volume1/docker && rm -rf sonos/ && mkdir sonos && cd sonos && curl -L https://github.com/lukekarrys/docker-node-sonos-http-api/tarball/master | tar xzvf - --strip-components=1"
```

**Get latest `node-sonos-http-api` source**

```shell
rm -rf node-sonos/
mkdir node-sonos
cd node-sonos
curl -L https://github.com/lukekarrys/node-sonos-http-api/tarball/master | tar xzvf - --strip-components=1
cd ..
```

**Build docker image**

```shell
docker build -t node-sonos .
```

**Run docker image**

```shell
docker run \
  --net=host \
  --name sonos \
  --restart=always \
  -d \
  -v `pwd`/settings.json:/app/settings.json \
  -v `pwd`/clips:/app/static/clips \
  -v `pwd`/cache:/app/cache \
  -v `pwd`/presets:/app/presets \
  node-sonos
```
