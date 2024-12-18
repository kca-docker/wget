ARG WORKDIR=/usr/bin/image

# Use alpine imgae as base
FROM docker.io/alpine:3
ARG WORKDIR

RUN mkdir -p ${WORKDIR}
COPY *.txt ${WORKDIR}
WORKDIR ${WORKDIR}

# Install wget from repository
RUN apk add --no-cache wget

# Print hint to stdout
#ENTRYPOINT ["wget", "--no-verbose", "--tries=1", "--spider"]
CMD ["sleep"]
