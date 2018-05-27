# Dockerized - bitcoin-tool

A dockerized version of [bitcoin-tool](https://github.com/matja/bitcoin-tool)

## Usage

Build docker image:

`docker build -t bitcoin-tool .`

Run bitcoin-tool:

```sh
docker run -it bitcoin-tool \
 --network bitcoin \
 --input-type address \
 --input-format base58check \
 --output-type all \
 --input "1Gu4VHM17SGHBN748k4ohNKy8BegySzyUF"
```

For more options read bitcoin-tool help:

`docker run -it bitcoin-tool --help`
