# Sequoia Container

A Docker container for genetic pedigree analysis using the Sequoia R package, built on Rocker/tidyverse.

## Quick Start

### Build the Container
```bash
docker build -t bnguyen29/sequoia .
```

### Run Interactive R Session
```bash
docker run -it bnguyen29/sequoia R
```

### Run with Volume Mount
```bash
docker run -v $(pwd):/workspace -w /workspace -it bnguyen29/sequoia R
```

## Features

- **Base**: rocker/tidyverse:4.4.2
- **Main Package**: sequoia (genetic pedigree analysis)
- **Current Sequoia Version**: 2.11.4.0

## Testing

Verify the installation:
```bash
docker run --rm bnguyen29/sequoia Rscript -e "library(sequoia); packageVersion('sequoia')"
```

Test with sample data:
```bash
docker run --rm bnguyen29/sequoia Rscript -e "library(sequoia); data(LH_HSg5); summary(LH_HSg5)"
```

## Build and push to Docker Hub

For production deployment:
```bash
docker buildx build --platform linux/amd64 -t bnguyen29/sequoia:latest --push .
```