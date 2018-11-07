# Docker Images

This project contains several docker images, which we use as a base to build our application images.

- `base`: installs Alpine Linux and some core packages.
- `node`: installs nodejs and npm.
- `ruby`: installs ruby, bundler, and the ruby development libraries.
- `sfdx`: installs the SFDX CLI for SalesForce on top of the `node` image

## Getting Started

### Building the Images

To build the docker images:

    > make all

### Pushing the Images

Make sure you are logged in to Docker Hub with your credentials:

    > docker login

Push the images to Docker Hub:

    > make push
