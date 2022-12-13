FROM anthonyzou/alpine-build-essentials
RUN apk add git cmake
RUN git clone --recursive https://github.com/RabbitBio/RabbitTClust.git

WORKDIR RabbitTClust

RUN ./install.sh

FROM alpine:latest
RUN apk add libstdc++ libgomp libgcc
COPY --from=0 /RabbitTClust/build /usr/local/bin
CMD ["clust-mst"]