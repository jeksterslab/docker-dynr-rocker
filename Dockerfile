FROM jeksterslab/rocker

RUN wget https://ftp.gnu.org/gnu/gsl/gsl-latest.tar.gz \
    && tar -zxvpf gsl-latest.tar.gz \
    && ./configure && make \
    && rm -rf gsl-latest.tar.gz

# install R packages
# dynr dependencies
# other useful packages
RUN install2.r --error \
        MASS           \
        Matrix         \
        numDeriv       \
        xtable         \
        latex2exp      \
        grid           \
        reshape2       \
        plyr           \
        mice           \
        magrittr       \
        methods        \
        fda            \
        car            \
        stringi        \
        tibble         \
        deSolve        \
        Rdpack         \
        testthat       \
        roxygen2       \
        knitr          \
        rmarkdown      \
        RcppGSL        \
        lavaan         \
        OpenMx         \
        dynr

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="dynr-rocker container."
