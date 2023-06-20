# jeksterslab/dynr-rocker

Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker and Apptainer Build and Push](https://github.com/jeksterslab/docker-dynr-rocker/actions/workflows/docker-apptainer-build-push.yml/badge.svg)](https://github.com/jeksterslab/docker-dynr-rocker/actions/workflows/docker-apptainer-build-push.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for `R` projects based on the [Rocker Project](https://rocker-project.org/)
with the [dynr](https://github.com/mhunter1/dynr) package.

## GitHub Actions

The `Docker and Apptainer Build and Push` GitHub actions workflow performs the following:

- Builds the Docker image specified by the `Dockerfile`.
- Pushes the image to [DockerHub](https://hub.docker.com/repository/docker/jeksterslab/dynr-rocker/general) using the tags `latest` and `date and time of build (YEAR-MM-DD-HHMMSSMS)`.
- Builds the Singularity Image File (SIF) using Apptainer based on the Docker Hub image from the previous step.
- Creates a GitHub release named `sif-YEAR-MM-DD-HHMMSSMS`. Note that `sif-YEAR-MM-DD-HHMMSSMS.zip` contains the SIF. 

## Docker Container

To launch `Rstudio Server`, run the following.

```bash
docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 jeksterslab/dynr-rocker
```

Open `http://localhost:8787` on your web browser to launch `Rstudio Server`.

- username: rstudio
- password: yourpassword

## Apptainer Shell

Download and unzip `sif-YEAR-MM-DD-HHMMSSMS.zip` from the GitHub release to extract `dynr-rocker.sif`.

```bash
apptainer shell dynr-rocker.sif
```
