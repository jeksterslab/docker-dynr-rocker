FROM rocker/tidyverse

RUN apt-get update -y && apt-get install -y \
        wget                                \
        vim                                 \
        build-essential                  && \
        wget https://ftp.gnu.org/gnu/gsl/gsl-2.7.tar.gz && \
        tar -zxvpf gsl-2.7.tar.gz                       && \
        cd gsl-2.7                                      && \
        ./configure                                     && \
        make                                            && \
        make install                                    && \
        cd ..                                           && \
        rm -rf gsl*                                     && \
        install2.r --error \
        devtools           \
        remotes            \
        tinytex            \
        MASS               \
        Matrix             \
        numDeriv           \
        xtable             \
        latex2exp          \
        reshape2           \
        plyr               \
        mice               \
        magrittr           \
        fda                \
        car                \
        stringi            \
        tibble             \
        deSolve            \
        Rdpack             \
        testthat           \
        knitr              \
        rmarkdown       && \
        Rscript -e "remotes::install_version(                \
                package = 'roxygen2',                        \
                version = '5.0.1',                           \
                repos = c(CRAN = 'https://cran.rstudio.com') \
                );                                           \
                tinytex::install_tinytex()"               && \
        git clone https://github.com/mhunter1/dynr.git    && \
        cd dynr                                           && \
        sed -i 's/, \"shortPathName\"//g' NAMESPACE       && \
        ./configure                                       && \
        make clean install                                && \
        cd ..                                             && \
        rm -rf dynr

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="dynr-rocker container."
