FROM alpine:3.13.0

# Install core packages.
RUN apk --no-cache add curl git jq libbz2 libpq libxml2 zlib

# Make app dir.
RUN mkdir -p /app

# Set the working directory.
WORKDIR /app
