FROM rocker/tidyverse:4.4.2

LABEL maintainer="Bryan Nguyen"
LABEL description="Sequoia genetic pedigree analysis with Rocker/tidyverse foundation"
LABEL version="2.11.4.0"
LABEL url="https://jiscah.github.io/"
LABEL base="rocker/tidyverse:4.5.1"

RUN apt-get update && apt-get install -y \
    # Fortran compiler and runtime for sequoia
    gfortran \
    libgfortran5 \
    && rm -rf /var/lib/apt/lists/*

RUN install2.r --error --deps TRUE \
    sequoia \
    && rm -rf /tmp/downloaded_packages