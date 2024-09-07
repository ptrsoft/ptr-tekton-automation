FROM node:lts-alpine
# FROM alpine:latest
RUN apk update && apk add bash && apk add yq 
# RUN apk add --update --no-cache curl ca-certificates git 
RUN apk fix && \
    apk --no-cache --update add git git-lfs gpg less openssh patch perl && \
    git lfs install
RUN apk add --no-cache aws-cli
RUN git config --global user.name "clouderp-code"
RUN git config --global user.email "papu.bhattacharya@ptrtechnology.com"
RUN apk upgrade --no-cache -U && \
  apk add --no-cache grep curl make gcc g++ ${NODE_BUILD_PYTHON} linux-headers binutils-gold gnupg gpg-agent libstdc++
RUN npm install -i -g serverless
  # RUN git version
# RUN aws --version
# ENTRYPOINT ["git"]
