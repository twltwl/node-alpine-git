FROM node:12-alpine
LABEL maintainer "Tommy Ljungberg <tommy@nexure.io>"

RUN npm config set unsafe-perm true

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN apk add --no-cache \
  git \
  openssh
