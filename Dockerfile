FROM golang

RUN mkdir -p /go/src/github.com/hashicorp &&\
    cd /go/src/github.com/hashicorp &&\
    git clone https://github.com/bitglue/terraform.git terraform &&\
    cd terraform &&\
    git checkout 1ef9731a2f148f6e67bd78156615c99e9b343f4e &&\
    make updatedeps &&\
    make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
