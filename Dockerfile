FROM alpine:3.4

# Create user, app, app group and app dir
RUN addgroup app && adduser -S -G app app
RUN mkdir -p /app && chown app:app /app

RUN apk update && apk add \
    curl \
    git \
    vim \
    coreutils

# Set to app user and create app directory
USER app
WORKDIR /app
COPY . .

