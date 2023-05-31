FROM ubuntu:22.04

RUN apt-get update && apt-get install cargo -y && cargo install mdbook

ENV PATH="${PATH}:/root/.cargo/bin"

VOLUME /opt/mdbookdata
WORKDIR /opt/mdbookdata
ENTRYPOINT ["mdbook"]
