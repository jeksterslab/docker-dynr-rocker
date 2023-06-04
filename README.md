# jeksterslab/dynr-rocker

Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Build and Push](https://github.com/jeksterslab/docker-dynr-rocker/actions/workflows/docker-build-push.yml/badge.svg)](https://github.com/jeksterslab/docker-dynr-rocker/actions/workflows/docker-build-push.yml)
<!-- badges: end -->

## Description

A Docker container for `R` projects based on the [Rocker Project](https://rocker-project.org/)
with the [dynr](https://github.com/mhunter1/dynr) package.

## Run

To launch `Rstudio Server`, run the following.

```bash
docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 jeksterslab/dynr-rocker
```

Open `http://localhost:8787` on your web browser to launch `Rstudio Server`.

- username: rstudio
- password: yourpassword
